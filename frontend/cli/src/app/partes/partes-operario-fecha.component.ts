import { CommonModule, Location } from '@angular/common';
import { Component, ViewChild, AfterViewInit, Output, EventEmitter } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { ActivatedRoute, Router, RouterModule } from '@angular/router';
import { NgbTypeaheadModule, NgbDatepickerModule, NgbModule, NgbDateStruct, NgbDatepickerConfig } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { ParteMO } from './parteMO';

import { ModalService } from '../modal/modal.service';
import { ParteMOService } from './parteMO.service';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { SharedService } from '../shared.service';
import { delay } from 'rxjs';
import { TipoTurnoService } from '../turnos/tipo_turno.service';
import { TipoTurno } from '../turnos/tipo_turno';
import { Horario } from '../turnos/horario';


@Component({
  selector: 'app-partes-operario-fecha',
  standalone: true,
  imports: [CommonModule,
    FormsModule,
    NgbTypeaheadModule,
    RouterModule,
    PaginationComponent, NgbDatepickerModule, NgbModule, MatProgressSpinnerModule,

  ],
  templateUrl: "partes-operario-fecha.component.html",

  styles: ``
})
export class PartesOperarioFechaComponent {

  parteOperario: ParteMO[] = [];
  logs: any;
  fecha!: string;
  operario!: string;
  tipoTurno!: TipoTurno;
  legajo!: string;
  parteDate!: NgbDateStruct;
  turno!: String;
  resultsPage: any;
  currentPage: number = 1;
  sizePage: number = 20;
  cargando: boolean = false;
  isRechazaLoading: boolean = false;
  isValidaLoading: boolean = false;
  showForm = false;
  horario!: Horario;
  horaDesde!: String;
  horaHasta!: String;





  constructor(
    private route: ActivatedRoute,
    private parteService: ParteMOService,
    private tipoTurnoService: TipoTurnoService,
    private location: Location,
    private modalService: ModalService,
    private parteMOService: ParteMOService,
    private router: Router,
    private sharedService: SharedService






  ) {

  }
  goBack(): void {
    this.location.back();
  }




  ngOnInit() {

    this.get();
  }
  formatTime(hours: number): string {
    const h = Math.floor(hours);
    const m = Math.round((hours - h) * 60);
    return `${h < 10 ? '0' + h : h}:${m < 10 ? '0' + m : m}`;
  }
  anular(id: number): void {
    let that = this;

    this.modalService
      .confirm(
        "Anular Parte",
        "¿Esta seguro de que desea anular el partes?",
        "Si anula el parte no lo prodá recuperar"
      )
      .then(function () {
        that.parteService.anular(id).subscribe((dataPackage) => that.get());
      });
  }

  getLogs(id: number) {

    this.parteMOService.getLogsFechaOperario(id).subscribe((dataPackage) => {
      this.logs = dataPackage
    });



  }



  getTurnoALaFecha(): void {
    this.tipoTurnoService.obtenerTipoTurno(parseInt(this.legajo!), this.fecha).subscribe((dataPackage) => {
      this.tipoTurno = <TipoTurno>dataPackage.data;
      console.log(this.tipoTurno);
      if (this.tipoTurno != null) {
        this.turno = this.tipoTurno.nombre;

      }
      else {
        this.turno = 'Sin Turno';
      }
    });
    this.getHorarioALafecha();
  }
  getHorarioALafecha(): void {
    this.tipoTurnoService.obtenerHorarioTurno(parseInt(this.legajo!), this.fecha).subscribe((dataPackage) => {
      this.horario = <Horario>dataPackage.data;
      if (dataPackage.status == 200) {
        this.horaDesde = this.horario.horaTurnoDesde;
        this.horaHasta = this.horario.horaTurnoHasta;
      }
      else {
        this.horaDesde = 'Sin Hora Desde';
        this.horaHasta = 'Sin Hora Hasta';

      }

    });

  }



  get(): void {
    this.legajo = this.route.snapshot.paramMap.get("legajo")!;
    this.fecha = this.route.snapshot.paramMap.get("fecha")!;

    this.parteService.partesOperarioFecha(parseInt(this.legajo!), this.fecha).subscribe((dataPackage) => {
      this.parteOperario = <ParteMO[]>dataPackage.data;
      const parte = this.parteNoAnulado();

      if (parte) {
        this.getLogs(parte.id);
      }
      this.sharedService.changeData({
        fecha: this.fecha,
        operario: this.parteOperario[0].operario
      });

    });

    this.getTurnoALaFecha();


  }
  parteNoAnulado(): ParteMO | undefined {

    let parte = this.parteOperario
      .filter(parte => parte.estado.nombre !== 'anulado' && parte.estado.nombre !== 'generado')
      .sort((a, b) => a.id - b.id)[0];

    if (!parte) {
      parte = this.parteOperario
        .filter(parte => parte.estado.nombre !== 'anulado')
        .sort((a, b) => a.id - b.id)[0];
    }
    return parte;
  }




  validaSupervisor() {
    this.legajo = this.route.snapshot.paramMap.get("legajo")!;
    this.fecha = this.route.snapshot.paramMap.get("fecha")!;
    this.isValidaLoading = true;
    this.parteMOService.validaSupervisor(parseInt(this.legajo!), this.fecha)
      .pipe(delay(500))
      .subscribe((dataPackage) => {
        this.resultsPage = dataPackage;
        window.location.reload();
      });


  }



  rechazaSupervisor() {
    this.legajo = this.route.snapshot.paramMap.get("legajo")!;
    this.fecha = this.route.snapshot.paramMap.get("fecha")!;
    this.isRechazaLoading = true;

    this.parteMOService.rechazaSupervisor(parseInt(this.legajo!), this.fecha)
      .pipe(delay(500))
      .subscribe((dataPackage) => {
        this.resultsPage = dataPackage;
        window.location.reload();


      });

  }
  onPageChangeRequested(page: number): void {
    this.currentPage = page;
  }
}



