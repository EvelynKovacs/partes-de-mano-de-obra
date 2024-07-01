import { CommonModule, Location, Time } from '@angular/common';
import { Component, EventEmitter, Input, Output, ViewChild } from '@angular/core';
import { FormsModule, NgForm } from '@angular/forms';
import { ActivatedRoute, RouterModule } from '@angular/router';
import { NgbDateParserFormatter, NgbDateStruct, NgbDatepickerConfig, NgbDatepickerModule, NgbModule, NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { ParteMO } from './parteMO';
import { Observable, debounceTime, distinctUntilChanged, tap, switchMap, of, map, catchError } from 'rxjs';
import { ModalService } from '../modal/modal.service';
import { Proyecto } from '../proyectos/proyecto';
import { ProyectoService } from '../proyectos/proyecto.service';
import { ParteMOService } from './parteMO.service';
import { OperarioService } from '../operario/operario.service';
import { Operario } from '../operario/operario';
import { Tarea } from '../proyectos/tarea';
import { SharedService } from '../shared.service';
import { TipoTurnoService } from '../turnos/tipo_turno.service';
import { TipoTurno } from '../turnos/tipo_turno';
import { Horario } from '../turnos/horario';



@Component({
  selector: 'app-parte-mo-detail',
  standalone: true,
  imports: [CommonModule,
    FormsModule,
    NgbTypeaheadModule,
    RouterModule,
    PaginationComponent, NgbDatepickerModule, NgbModule,],
  templateUrl: "parte-mo-detail.component.html",
  styleUrls: ["./parte-mo-detail.component.css"],

})
export class ParteMODetailComponent {




  parte!: ParteMO;
  searching: boolean = false;
  searchFailed: boolean = false;
  msjError = "";
  selectedTime!: string;
  horas: string = '';
  isNew = false;
  horaDesdeMayorQueHasta: boolean = false;
  ultimosPartes: ParteMO[] = [];
  showSuccessMessage: boolean = false;
  showSuccessModificacion: boolean = false;
  verUltimos = 5;
  fechaSeleccionada!: NgbDateStruct;
  operario!: Operario;
  fecha: any;
  tipoTurno!: TipoTurno;
  nombreTurno!: String;
  horaDesde!: String;
  horaHasta!: String;
  horario!: Horario;
  //mensajeAdvertencia!: string;
  turnoInexistente: boolean = false;







  constructor(
    private route: ActivatedRoute,
    private parteService: ParteMOService,
    private modalService: ModalService,
    private location: Location,
    private operarioService: OperarioService,
    private proyectoService: ProyectoService,
    private config: NgbDatepickerConfig,
    private sharedService: SharedService,
    private tipoTurnoService: TipoTurnoService,



  ) {
    const currentDate = new Date();
    this.config.maxDate = {
      year: currentDate.getFullYear(),
      month: currentDate.getMonth() + 1,
      day: currentDate.getDate()
    };


    this.sharedService.currentData.subscribe(data => {
      if (data) {
        this.operario = data.operario;
        this.fecha = data.fecha;
      }
    });



  }


  establecerTurno() {
    this.establecerHorario();

    const fechaNgb: NgbDateStruct = this.fechaSeleccionada;
    this.tipoTurnoService.obtenerTipoTurno(this.parte.operario.legajo, new Date(fechaNgb.year, fechaNgb.month - 1, fechaNgb.day).toISOString().split('T')[0]).subscribe((dataPackage) => {
      this.tipoTurno = <TipoTurno>dataPackage.data;
      console.log(this.tipoTurno);
      if (this.tipoTurno != null) {
        this.nombreTurno = this.tipoTurno.nombre;
        this.turnoInexistente = false;


      }
      else {
        this.nombreTurno = 'Sin Turno';
        this.turnoInexistente = true;


      }
    });
    if (!this.parte.operario) {

      this.nombreTurno = ' ';

    }

  }



  establecerHorario() {
    const fechaNgb: NgbDateStruct = this.fechaSeleccionada;
    this.tipoTurnoService.obtenerHorarioTurno(this.parte.operario.legajo, new Date(fechaNgb.year, fechaNgb.month - 1, fechaNgb.day).toISOString().split('T')[0]).subscribe((dataPackage) => {
      this.horario = <Horario>dataPackage.data;
      if (dataPackage.status == 200) {
        this.horaDesde = this.horario.horaTurnoDesde;
        this.horaHasta = this.horario.horaTurnoHasta;

      }
      else {
        this.horaDesde = 'Sin Hora';
        this.horaHasta = 'Sin Hora';
        //this.mensajeAdvertencia = 'Está de franco';

      }

    });

  }

  get(): void {
    const id = this.route.snapshot.paramMap.get("id")!;
    if (id === "Nuevo") {
      this.isNew = true;

      if (this.operario != null) {
        this.parte = <ParteMO>{
          operario: this.operario,
          proyecto: <Proyecto>{},
          tarea: <Tarea>{},


        }
        this.nombreTurno = this.operario.historialTurnos[0].tipoTurno.nombre;
        if (typeof this.fecha === 'string') {
          const [year, month, day] = this.fecha.split('-').map(Number);
          this.fechaSeleccionada = { year, month, day };
        } else {
          this.fechaSeleccionada = this.fecha;
        }
        console.log(this.operario);
      } else {
        console.log(this.operario);

        this.parte = <ParteMO>{
          operario: <Operario>{},
          proyecto: <Proyecto>{},
          tarea: <Tarea>{}

        }

        this.establecerFechaHoy();

      }
    }

    else {
      this.isNew = false;

      this.parteService.get(parseInt(id!)).subscribe((dataPackage) => {
        this.parte = <ParteMO>dataPackage.data;
        this.horas = this.convertirAHorasYMinutos(this.parte.totalHoras);
        const [year, month, day] = this.parte.fecha.split('-').map(Number);
        this.nombreTurno = this.parte.operario.historialTurnos[0].tipoTurno.nombre;
        this.fechaSeleccionada = { year, month, day };
      });


    }
  }

  goBack(): void {
    this.location.back();
  }



  establecerFechaHoy() {
    const hoy = new Date();
    this.fechaSeleccionada = {
      year: hoy.getFullYear(),
      month: hoy.getMonth() + 1,
      day: hoy.getDate()
    };
  }

  save(): void {
    const horasParts = this.horas.split(':');
    const horas = parseInt(horasParts[0]);
    const minutos = parseInt(horasParts[1]);
    const totalHoras = (horas + minutos / 60).toFixed(2);
    this.parte.totalHoras = parseFloat(totalHoras);

    const fechaNgb: NgbDateStruct = this.fechaSeleccionada;
    if (fechaNgb) {
      const fechaJS: Date = new Date(fechaNgb.year, fechaNgb.month - 1, fechaNgb.day);
      this.parte.fecha = fechaJS.toISOString().split('T')[0];
    }

    this.parteService.save(this.parte).subscribe(dataPackage => {
      if (dataPackage.status === 200) {
        if (this.isNew) {
          this.showSuccessMessage = true;
          this.parte = <ParteMO>dataPackage.data;
          this.parte.tarea = <Tarea>{};
          this.parte.horaDesde = new Date();
          this.parte.horaHasta = new Date();
          this.horas = '';
          this.parte.id = -1;
          this.getUltimos();
          document.getElementById("tareaInput")?.focus();



        } else {
          this.showSuccessModificacion = true;

        }

      } else {
        this.msjError = <string><unknown>dataPackage.data;
        this.modalService.error("Error", this.msjError);
      }


    });
  }





  isAnyFieldRequiredMissing(): boolean {

    return !this.parte.tarea.code || !this.fechaSeleccionada;


  }


  calcularHoras() {
    if (this.parte.horaDesde && this.parte.horaHasta) {
      const horaDesde = new Date('1970-01-01T' + this.parte.horaDesde);
      const horaHasta = new Date('1970-01-01T' + this.parte.horaHasta);

      if (horaHasta < horaDesde) {
        this.horaDesdeMayorQueHasta = true;
      } else {
        this.horaDesdeMayorQueHasta = false;

        let diferencia = horaHasta.getTime() - horaDesde.getTime();

        let horas = Math.floor(diferencia / (1000 * 60 * 60));
        let minutos = Math.floor((diferencia % (1000 * 60 * 60)) / (1000 * 60));

        if (!isNaN(horas) && !isNaN(minutos)) {
          this.horas = horas.toString().padStart(2, '0') + ':' + minutos.toString().padStart(2, '0');
        } else {
          this.horas = '';
        }
      }
    } else {
      this.horaDesdeMayorQueHasta = false;
      this.horas = '';
    }
  }













  ngOnChanges() {
    this.getUltimos();

  }

  getUltimos(): void {
    const n = this.verUltimos;

    this.parteService.ultimos(n).subscribe(dataPackage => {
      this.ultimosPartes = <ParteMO[]>dataPackage.data;
    });
  }






  convertirAHorasYMinutos(totalHoras: number) {
    const horas = Math.floor(totalHoras);
    const minutos = Math.round((totalHoras - horas) * 60)
      .toString()
      .padStart(2, '0');
    return `${horas}:${minutos}`;
  }


  searchOperario = (text$: Observable<string>): Observable<any[]> =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      tap(() => (this.searching = true)),
      switchMap((term) => {
        if (term.length < 3) {
          return of([]);
        } else {
          return this.operarioService.search(term).pipe(
            map((response) => {
              let operarios = <Operario[]>response.data;
              this.searchFailed = false;
              return operarios;
            }),
            catchError(() => {
              this.searchFailed = true;
              return of([]);
            })
          );
        }
      }),
      tap(() => (this.searching = false))
    );


  searchProyecto = (text$: Observable<string>): Observable<any[]> =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      tap(() => (this.searching = true)),
      switchMap((term) => {
        if (term.length < 3) {
          return of([]);
        } else {
          return this.proyectoService.search(term).pipe(
            map((response) => {
              let proyectos = <Proyecto[]>response.data;
              this.searchFailed = false;
              return proyectos;
            }),
            catchError(() => {
              this.searchFailed = true;
              return of([]);
            })
          );
        }
      }),
      tap(() => (this.searching = false))
    );

  onProyectoChange(newTarea: any) {
    if (!this.parte.proyecto) {
      this.parte.tarea = {} as Tarea;
    }
  }


  searchTareasProyecto = (text$: Observable<string>): Observable<any[]> =>
    text$.pipe(
      debounceTime(300),
      distinctUntilChanged(),
      tap(() => (this.searching = true)),
      switchMap((term) => {
        if (term.length < 3) {
          return of([]);
        } else {
          const proyectoId = this.parte.proyecto.id;
          return this.proyectoService.searchTareas(term, proyectoId).pipe(
            map((response) => {
              let tareas = <Tarea[]>response.data;
              this.searchFailed = false;
              return tareas;
            }),
            catchError(() => {
              this.searchFailed = true;
              return of([]);
            })
          );
        }
      }),
      tap(() => (this.searching = false))
    );







  resultFormat(value: any) {
    return value.name;
  }
  inputFormat(value: any) {
    return value ? value.name : null;
  }

  resultFormatProyecto(value: any) {
    return value.description;
  }
  inputFormatProyecto(value: any) {
    return value ? value.description : null;
  }
  resultFormatTarea(value: any) {
    return value.description;
  }
  inputFormatTarea(value: any) {
    return value ? value.description : null;
  }

  ngOnInit() {
    this.get();
    this.getUltimos();


  }

}
