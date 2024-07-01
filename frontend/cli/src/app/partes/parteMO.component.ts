import { Component, LOCALE_ID } from '@angular/core';
import { ModalService } from '../modal/modal.service';
import { ResultsPage } from '../results-page';
import { CommonModule, Location, registerLocaleData } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterModule } from '@angular/router';
import { NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { ParteMOService } from './parteMO.service';
import { ParteMO } from './parteMO';

@Component({
  selector: 'app-parte',
  standalone: true,
  imports: [CommonModule,RouterModule, PaginationComponent,FormsModule,NgbTypeaheadModule],
  templateUrl:'parteMO.component.html' ,
  styles:``,
})
export class ParteMOComponent {
  partes!:ParteMO; 
  resultsPage: ResultsPage = <ResultsPage>{};
  currentPage: number = 1;
  sizePage: number =10;
  searchTerm: string = '';
  searching: boolean= false;
  searchFailed: boolean =false;
  searchResults: any[] = []; 

  constructor(
    private partesService: ParteMOService,
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
 
  getPartes(): void {
    this.partesService.byPage(this.currentPage, this.sizePage).subscribe((dataPackage) => {
      this.resultsPage = <ResultsPage>dataPackage.data;
    });
  }
 
  ngOnInit() {
    this.getPartes();
  }
  

  remove(id: number): void {
    let that = this;

    this.modalService
      .confirm(
        "Eliminar Parte",
        "¿Esta seguro de que desea eliminar el partes?",
        "Si elimina el parte no lo prodá recuperar"
      )
      .then(function () {
        that.partesService.anular(id).subscribe((dataPackage) => that.getPartes());
      });
  }

 
   

    onPageChangeRequested(page: number): void {
      this.currentPage = page;
      this.getPartes();
    }
}



