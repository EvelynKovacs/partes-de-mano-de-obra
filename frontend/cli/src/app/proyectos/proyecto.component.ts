import { CommonModule, Location } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import {  RouterModule } from '@angular/router';
import { NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { Proyecto } from './proyecto';
import { ResultsPage } from '../results-page';
import { ProyectoService } from './proyecto.service';
import { ModalService } from '../modal/modal.service';

@Component({
  selector: 'app-proyecto',
  standalone: true,
  imports: [CommonModule,RouterModule, PaginationComponent,FormsModule,NgbTypeaheadModule],
  templateUrl:"proyecto.component.html",
  styles:``,
})
export class ProyectoComponent {

  proyectos: Proyecto[]=[];
  proyecto: any = {}; 
  resultsPage: ResultsPage = <ResultsPage>{};
  currentPage: number = 1;
  sizePage: number =10;
  searchTerm: string = '';
  searching: boolean= false;
  searchFailed: boolean =false;
  searchResults: any[] = []; 

  constructor(
    private proyectoService: ProyectoService,
    private modalService: ModalService,
    private location: Location

  ) {}

  goBack() {
    this.location.back();
  }

  truncateDescription(description: string, maxLength: number): string {
    if (description.length > maxLength) {
      return description.substring(0, maxLength) + '...';
    } else {
      return description;
    }
  }
  getProyectos(): void {
    this.proyectoService.byPage(this.currentPage, this.sizePage).subscribe((dataPackage) => {
      this.resultsPage = <ResultsPage>dataPackage.data;
    });
  }
 
  ngOnInit() {
    this.getProyectos();
  }
  

  remove(id: number): void {
    let that = this;

    this.modalService
      .confirm(
        "Eliminar Proyecto",
        "¿Esta seguro de que desea eliminar el proyecto?",
        "Si elimina el proyecto no lo prodá recuperar y se eliminaran sus tareas."
      )
      .then(function () {
        that.proyectoService.remove(id).subscribe((dataPackage) => that.getProyectos());
      });
  }

   
    resultFormat(value:any){
      return value.name;
    }
    inputFormat(value:any){
      return value ? value.name : null;
    }

    onPageChangeRequested(page: number): void {
      this.currentPage = page;
      this.getProyectos();
    }
}
