
import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ActivatedRoute, Router, RouterModule } from '@angular/router';
import { ModalService } from '../modal/modal.service';
import { PaginationComponent } from '../pagination/pagination.component';
import { ParteMOService } from './parteMO.service';
import { NgbDateStruct, NgbDatepickerConfig } from '@ng-bootstrap/ng-bootstrap';
import { FormsModule } from '@angular/forms';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { Resumen } from './resumen-interface';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { delay } from 'rxjs';



@Component({
  selector: 'app-resumen-operario',
  standalone: true,
  imports: [CommonModule, RouterModule, PaginationComponent, FormsModule, NgbModule, MatProgressSpinnerModule],
  templateUrl: "resumen-operario.component.html",
  styleUrls: ['./resumen-operario.component.css'
  ]
})
export class ResumenOperarioComponent {
  partes!: Resumen;
  resultsPage: any;
  currentPage: number = 1;
  sizePage: number = 10;
  validando: boolean = false;

  fechaSeleccionada!: NgbDateStruct;
  fecha: any;

  filtroSeleccionado!: string;
  mensaje: string = '';
  isValidaLoading: boolean = false;
  buscar: boolean = false;



  constructor(
    private parteMOService: ParteMOService,
    private config: NgbDatepickerConfig,
    private route: ActivatedRoute,
    private router: Router,




  ) {
    const currentDate = new Date();
    this.config.maxDate = {
      year: currentDate.getFullYear(),
      month: currentDate.getMonth() + 1,
      day: currentDate.getDate()


    }
  }




  ngOnInit() {
    this.filtroSeleccionado = 'invalidos';
    this.getPartes();
  }
  onPageChangeRequested(page: number): void {
    this.currentPage = page;
    console.log("PAG " + this.currentPage);

    if (!this.buscar) {
      this.getPartes();
    } else {
      this.buscarParteFecha();
    }
  }

  buscarParteFecha() {
    this.buscar = true;
    this.fecha = null;
    const fechaNgb: NgbDateStruct = this.fechaSeleccionada;
    if (fechaNgb) {
      const fechaJS: Date = new Date(fechaNgb.year, fechaNgb.month - 1, fechaNgb.day);
      this.fecha = fechaJS.toISOString().split('T')[0];

    }

    this.parteMOService.resumenFecha(this.fecha, this.currentPage, this.sizePage).subscribe((dataPackage) => {
      this.resultsPage = dataPackage;
    });
  }

  getPartes(): void {
    this.buscar = false;
    location.reload;

    const fechaNgb: NgbDateStruct = this.fechaSeleccionada;


    this.verificarFechaOcreaNueva(fechaNgb);

    if (this.filtroSeleccionado == 'todos') {

      this.parteMOService.todosLosPartes(this.fecha, this.currentPage, this.sizePage).subscribe((dataPackage) => {
        this.resultsPage = dataPackage;
      });
    }
    if (this.filtroSeleccionado == 'invalidos') {

      this.parteMOService.partesInvalidos(this.fecha, this.currentPage, this.sizePage).subscribe((dataPackage) => {
        this.resultsPage = dataPackage;
      });
    }
    if (this.filtroSeleccionado == 'validos') {

      this.parteMOService.partesValidos(this.fecha, this.currentPage, this.sizePage).subscribe((dataPackage) => {
        this.resultsPage = dataPackage;
      });


    }
  }


  verificarFechaOcreaNueva(fecha: NgbDateStruct) {
    if (fecha) {
      const fechaJS: Date = new Date(fecha.year, fecha.month - 1, fecha.day);
      this.fecha = fechaJS.toISOString().split('T')[0];
    } else {
      const fechaJS: Date = new Date()
      year: fechaJS.getFullYear();
      month: fechaJS.getMonth() + 1;
      day: fechaJS.getDate();
      this.fecha = fechaJS.toISOString().split('T')[0];

    }
  }


  validar(): void {
    this.isValidaLoading = true;
    //this.mensaje = '';
    const fechaNgb: NgbDateStruct = this.fechaSeleccionada;
    console.log("FECHA NGB " + fechaNgb);
    console.log("FECHA SEL " + JSON.stringify(this.fechaSeleccionada));




    this.parteMOService.validar(this.fecha)
      .pipe(delay(500))
      .subscribe((dataPackage) => {
        this.resultsPage = dataPackage;
        window.location.reload();


      });


  }
  seleccionarFiltro(filtro: string) {
    this.filtroSeleccionado = filtro;
    this.currentPage = 1;

    this.getPartes();


  }



}










