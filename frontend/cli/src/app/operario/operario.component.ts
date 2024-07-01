import { Component } from '@angular/core';
import { OperarioService } from './operario.service';
import { ModalService } from '../modal/modal.service';
import { Router, RouterModule } from '@angular/router';
import { CommonModule, Location } from '@angular/common';
import { ResultsPage } from '../results-page';
import { Operario } from './operario';
import { FormsModule } from '@angular/forms';
import { NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { TipoTurnoService } from '../turnos/tipo_turno.service';
import { TipoTurno } from '../turnos/tipo_turno';
import { Horario } from '../turnos/horario';


@Component({
  selector: 'app-operario',
  standalone: true,
  imports: [CommonModule,RouterModule, PaginationComponent,FormsModule,NgbTypeaheadModule],
  templateUrl: 'operario.component.html',

  styles: ``
})
export class OperarioComponent {


  operario!:Operario;
  resultsPage: ResultsPage = <ResultsPage>{};
  currentPage: number = 1;
  sizePage: number =10;
  tipoTurno!:TipoTurno;
  nombreTurno!:String;
  textoBusqueda:string='';
  horaDesde!:String;
  horaHasta!:String;
 horario!:Horario;
 horarios: { [legajo: number]: string } = {}; 


  
 


  constructor(
    private operarioService: OperarioService,
    private modalService: ModalService,
    private router: Router,
    private location:  Location,
    private tipoTurnoService:TipoTurnoService

  ) {}
  goBack(): void {
   this.location.back();



  }   
  getOpers(): void {
    this.operarioService.byPageOperario(this.currentPage, this.sizePage, this.textoBusqueda).subscribe((dataPackage) => {
        this.resultsPage = <ResultsPage>dataPackage.data;
        this.resultsPage.content.forEach((operario: Operario) => {
          this.getHorario(operario);
      });
      });
  } 


  getHorario(operario: Operario): void {
    let legajo = operario.legajo;
    
    this.tipoTurnoService.obtenerHorarioTurno(legajo,new Date().toISOString().split('T')[0] ).subscribe((dataPackage) => {
        if (dataPackage.status === 200) {
            const horario = dataPackage.data as Horario;
            this.horarios[legajo] = `${horario.horaTurnoDesde}-${horario.horaTurnoHasta}`;
        } else {
          if(this.turnoVigente(operario)=='Sin Turno'){
            this.horarios[legajo] = '--';
          }
          else{
            this.horarios[legajo] = 'De Franco';

          }
        }
    });
}
  buscarOperarios(): void {
    this.currentPage = 1; 
    this.getOpers();
  }
 
  ngOnInit() {
    this.getOpers();
    
  }




  turnoVigente(operario: Operario): String {

    const historicos = operario.historialTurnos;
  
    const fechaHoy = new Date().toISOString().split('T')[0]; 
  
    for (let ht of historicos) {
      const fechaDesde = ht.fechaDesde.split('T')[0];
      const fechaHasta = ht.fechaHasta ? ht.fechaHasta.split('T')[0] : null;
  
  
      if (!fechaHasta || (fechaHoy >= fechaDesde && fechaHoy <= fechaHasta)) {
        return ht.tipoTurno.nombre;
      }
      else{
        return 'Sin Turno'
      }
    }
  
    return '';
  }

 

  
  remove(id: number): void {
    let that = this;

    that.modalService
        .confirm(
            "Eliminar Operario",
            "¿Esta seguro de que desea eliminar el operario?",
            "Si elimina el operario, no podra recuperarlo."
        )
        .then(function () {
            that.operarioService.remove(id).subscribe((dataPackage) => {
                if (dataPackage.status !== 200) {
                    const msjError = <string><unknown>dataPackage.data;
                    that.modalService.error("Error", msjError).then();
                }else{
                that.getOpers();
                window.location.reload();
                }

            });
        });
}


    


      
    
  onPageChangeRequested(page: number): void {
    this.currentPage = page;
    this.getOpers();
  }


}
