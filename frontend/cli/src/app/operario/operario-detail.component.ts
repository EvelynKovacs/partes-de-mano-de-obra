import { CommonModule, Location } from '@angular/common';
import { Component } from '@angular/core';
import { FormControl, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ActivatedRoute, RouterModule } from '@angular/router';
import { NgbCalendar, NgbDateStruct, NgbDatepickerModule, NgbModule, NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { Operario } from './operario';
import { OperarioService } from './operario.service';
import { Empresa } from '../empresas/empresa';
import { ModalService } from '../modal/modal.service';
import { CategoriaOperario } from './categoria';
import { HistorialTurnos } from '../turnos/historial_turnos';
import { TipoTurno } from '../turnos/tipo_turno';
import { Observable, catchError, debounceTime, distinctUntilChanged, filter, map, of, switchMap, tap } from 'rxjs';
import { TipoTurnoService } from '../turnos/tipo_turno.service';



@Component({
  selector: 'app-operario-detail',
  standalone: true,
  imports: [CommonModule, RouterModule, PaginationComponent, FormsModule, NgbTypeaheadModule, NgbDatepickerModule, NgbModule, ReactiveFormsModule,],
  templateUrl: 'operario-detail.component.html',
  styleUrls: ["./operario-detail.component.css"],
})
export class OperarioDetailComponent {
  operario!: Operario;
  msjError = "";
  categorias = Object.values(CategoriaOperario);
  categoriasNombres: string[] = Object.keys(CategoriaOperario)
    .filter((key: string) => !isNaN(Number(CategoriaOperario[key as keyof typeof CategoriaOperario])));

  isNew = false;
  tipoTurno!: TipoTurno;
  searching: boolean = false;
  searchFailed: boolean = false;
  //operarioToSave!:Operario;
  fechaHastaHabilitado: boolean[] = [];
  showSuccessMessage: boolean = false;
  showSuccessModificacion: boolean = false; 
  modalVisible!: boolean;








  constructor(
    private route: ActivatedRoute,
    private operarioService: OperarioService,
    private location: Location,
    private modalService: ModalService,
    private calendar: NgbCalendar,
    private tipoTurnoService: TipoTurnoService,


  ) { }

 
  onFechaDesdeChange(index: number) {
    console.log(this.operario.historialTurnos[index]);
    this.operario.historialTurnos[index].fechaHasta = "";
    this.fechaHastaHabilitado[index] = this.operario.historialTurnos[index].fechaDesde;

  } 
  goBack(): void {
    this.location.back();
  }



  save(): void {

     this.operario.historialTurnos.forEach(ht => {
      ht.fechaDesde = this.formatDate(ht.fechaDesde);
      ht.fechaHasta = this.formatDate(ht.fechaHasta);
    
    });  
 
    this.operarioService.save(this.operario).subscribe(dataPackage => {
      if (dataPackage.status === 200) {         
        this.operario = <Operario>dataPackage.data;
       this.visibilizarFechas();
        this.showSuccessMessage=true;
         // this.goBack();
         
      } else {
       
        this.msjError = <string><unknown>dataPackage.data;
        this.modalService.error("Error", this.msjError).then();
        this.visibilizarFechas();
       
      
        
      }
    });


  }
 

  visibilizarFechas(){
    this.operario.historialTurnos.forEach(ht => {
      ht.fechaDesde = this.convertStringToDateStruct(ht.fechaDesde);
      if (ht.fechaHasta != null) {
        ht.fechaHasta = this.convertStringToDateStruct(ht.fechaHasta);
      }
    });

  }
  convertStringToDateStruct(dateString: string): NgbDateStruct | null {
    const parts = dateString.split('-');
    if (parts.length === 3) {
      const year = parseInt(parts[0], 10);
      const month = parseInt(parts[1], 10);
      const day = parseInt(parts[2], 10);
      if (!isNaN(year) && !isNaN(month) && !isNaN(day)) {
        return { year, month, day };
      }
    }
    return null;
  }


  borrarHistoricoTurno(historicoTurno: HistorialTurnos) {
    this.modalService.confirm("Eliminar historico turno",
     "¿Está seguro de borrar este historico turno?", 
     "El cambio no se confirmará hasta que no guarde el operario")
      .then(
        (_) => {
          let historicoTurnos = this.operario.historialTurnos;
          historicoTurnos.splice(historicoTurnos.indexOf(historicoTurno), 1);
        }
      )
  }

  formatDate(date: any) {
    if (date && date.year && date.month && date.day) {
      const year = date.year;
      const month = date.month.toString().padStart(2, '0');
      const day = date.day.toString().padStart(2, '0');
      return `${year}-${month}-${day}`;
    }
    return null;
  }
  validarFechaHasta(): boolean {
    for (const turno of this.operario.historialTurnos) {
      if (!turno.fechaHasta) {
        return false; 
      }
    }

    return true;


  }

  addTurno() {
      const today = this.calendar.getToday();
      this.operario.historialTurnos.push({
        fechaDesde: null,
        fechaHasta: null,
        tipoTurno: <TipoTurno>{}
      });
    
  }

  searchTipoTurnos = (text$: Observable<string>): Observable<any[]> =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      filter(term => term.length >= 3),
      tap(() => (this.searching = true)),
      switchMap((term) =>
        this.tipoTurnoService
          .search(term)
          .pipe(
            map((response) => {
              let tipoTurnos = <TipoTurno[]>response.data;
              return tipoTurnos;
            })
          )
          .pipe(
            tap(() => (this.searchFailed = false)),
            catchError(() => {
              this.searchFailed = true;
              return of([]);
            })
          )
      ),
      tap(() => (this.searching = false))
    );


 
  resultFormatNombre(value: any) {
    return value.nombre;
  }

  inputFormatNombre(value: any) {
    return value ? value.nombre : null;
  }
  convertirAFechaNgb(dateString: string): NgbDateStruct {
    const [year, month, day] = dateString.split('-').map(Number);
    return { year, month, day };
  }

  get(): void {
    const id = this.route.snapshot.paramMap.get('id')!;
    if (id === 'Nuevo') {
      this.isNew=true;
      this.operario = <Operario>{
        historialTurnos: <HistorialTurnos[]>[]
      }
    } else {
      this.isNew=false;

      this.operarioService.get(parseInt(id!))
        .subscribe((dataPackage) => {
          this.operario = <Operario>dataPackage.data;
           this.operario.historialTurnos.forEach(() => {
            this.fechaHastaHabilitado.push(true);
          }); 
          
          this.operario.historialTurnos.forEach(ht => {
            if (ht.fechaHasta !== null) {
                ht.fechaHasta = this.convertirAFechaNgb(ht.fechaHasta);
            } else {
                ht.fechaHasta = null;
            }
            ht.fechaDesde = this.convertirAFechaNgb(ht.fechaDesde);
        });

        });
    }
  }
 
  private isObjectEmpty(obj: any): boolean {
    return obj && typeof obj === 'object' && Object.keys(obj).length === 0;
  }
  incompleteCount: number = 0;


  isFormValid(): boolean {
    this.incompleteCount = 0;

    if (!this.operario.historialTurnos || this.operario.historialTurnos.length === 0) {
      return false;
    }

    for (let historicoTurno of this.operario.historialTurnos) {
      if (!historicoTurno.fechaDesde || this.isObjectEmpty(historicoTurno.tipoTurno) || !historicoTurno.tipoTurno) {
        return false;
      }
      if (!historicoTurno.fechaHasta) {
        this.incompleteCount++;
        if (this.incompleteCount > 1) {
          //console.log("INC: "+incompleteCount);
          return false;
        }
      }
    }

    return true;
  }













  ngOnInit() {


    this.get();
   
  }
 

}
