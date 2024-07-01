  import { CommonModule, Location } from "@angular/common";
  import { Component } from "@angular/core";
  import { FormControl, FormsModule, Validators } from "@angular/forms";
  import { NgbTypeaheadModule } from "@ng-bootstrap/ng-bootstrap";
  import { Proyecto } from "./proyecto";
  import { ActivatedRoute, RouterModule } from "@angular/router";
  import { ProyectoService } from "./proyecto.service";
  import { ModalService } from "../modal/modal.service";

  import {
    Observable,
    catchError,
    debounceTime,
    distinctUntilChanged,
    map,
    of,
    switchMap,
    tap,
  } from "rxjs";
  import { Empresa } from "../empresas/empresa";
  import { PaginationComponent } from "../pagination/pagination.component";
  import { EmpresaService } from "../empresas/empresa.service";
  import { Tarea } from "./tarea";
  import { TareaService } from "./tarea.service";

  @Component({
    selector: "app-proyectos-detail",
    standalone: true,
    imports: [
      CommonModule,
      FormsModule,
      NgbTypeaheadModule,
      RouterModule,
      PaginationComponent,
    ],
    templateUrl: "proyectos-detail.component.html",
    styleUrls: ["./proyectos-detail.component.css"],
  })
  export class ProyectosDetailComponent {
    proyecto!: Proyecto;
    proyectoTemp!: Proyecto;
    tareasAgregadas: Tarea[] = [];
    searching: boolean = false;
    searchFailed: boolean = false;
    proyectoExistente!: Proyecto;
    msjError = "";
    isNew = false;
    tareasTemporales: Tarea[] = [];
    
    constructor(
      private route: ActivatedRoute,
      private proyectoService: ProyectoService,
      private modalService: ModalService,
      private location: Location,
      private empresaService: EmpresaService,
      private tareaService: TareaService
    ) {}

    goBack(): void {
      this.location.back();
    }

    save(): void {
      if (this.isNew) {
        this.proyecto.tareas = [];
        this.tareasTemporales.forEach((tarea) => {
          this.proyecto.tareas.push(tarea);
        });

      }
      this.proyectoService.save(this.proyecto).subscribe((dataPackage) => { 
        if (dataPackage.status === 200) {
          this.proyecto = <Proyecto>dataPackage.data;
          this.goBack();
        } else {
          this.msjError = <string>(<unknown>dataPackage.data);
          this.modalService.error("Error", this.msjError);
        }
      });
    }
   

   

    searchEmpresa = (text$: Observable<string>): Observable<any[]> =>
      text$.pipe(
        debounceTime(300),
        distinctUntilChanged(),
        tap(() => (this.searching = true)),
        switchMap((term) => {
          if (term.length < 4) {
            return of([]);
          } else {
            return this.empresaService.search(term).pipe(
              map((response) => {
                let empresas = <Empresa[]>response.data;
                this.searchFailed = false;
                return empresas;
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

      
    
    addTarea() {
      if (this.isNew) {
        this.tareasTemporales.push({ code: "", description: "" });
      } else {
        this.proyecto.tareas.push({ code: "", description: "" });
      }
    }

    removeTarea(tarea: Tarea) {
      let tareas = this.isNew ? this.tareasTemporales : this.proyecto.tareas;
      if (!tarea.code && !tarea.description) {
        tareas.splice(tareas.indexOf(tarea), 1);
      } else {
        this.modalService
          .confirm(
            "Eliminar Tarea",
            "¿Está seguro de borrar esta tarea?",
            "Si elimina la tarea, no la podrá recuperar luego."
          )
          .then((_) => {
            tareas.splice(tareas.indexOf(tarea), 1);
            if (!this.isNew) {
              this.deleteTarea(tarea);
            }
            
          });
      }
      
    }


      deleteTarea(tarea: Tarea): void {
        this.tareaService.remove(tarea.code).subscribe();
      
    }
    
    isAnyFieldRequiredMissing(): boolean {
      const tareas = this.isNew ? this.tareasTemporales : this.proyecto.tareas;
      const camposProyectoIncompletos = Object.values(this.proyecto).some(
        (valor) => !valor
      );
      const tareasIncompletas = tareas.some((tarea) => {
        return Object.values(tarea).some((valor) => !valor);
      });
      return camposProyectoIncompletos || tareasIncompletas;
    }

    get(): void {
      const id = this.route.snapshot.paramMap.get("id")!;
      if (id === "Nuevo") {
        this.isNew = true;
        this.proyecto = <Proyecto>{};
      } else {
        this.isNew = false;
        this.proyectoService
          .get(parseInt(id!))
          .subscribe(
            (dataPackage) => (this.proyecto = <Proyecto>dataPackage.data)
          );
      }
    }

    resultFormat(value: any) {
      return value.name;
    }
    inputFormat(value: any) {
      return value ? value.name : null;
    }

    ngOnInit() {
      this.get();

    }
  }
