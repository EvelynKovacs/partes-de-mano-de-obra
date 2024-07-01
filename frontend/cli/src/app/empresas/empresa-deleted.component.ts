import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router, RouterModule } from '@angular/router';
import { NgbTypeaheadModule } from '@ng-bootstrap/ng-bootstrap';
import { PaginationComponent } from '../pagination/pagination.component';
import { ModalService } from '../modal/modal.service';
import { ResultsPage } from '../results-page';
import { EmpresaService } from './empresa.service';
import { Empresa } from './empresa';

@Component({
  selector: 'app-empresa-deleted',
  standalone: true,
  imports: [CommonModule,RouterModule, PaginationComponent,FormsModule,NgbTypeaheadModule],
  templateUrl: 'empresa-deleted.component.html',
  styles: ``
})
export class EmpresaDeletedComponent {

  empresas: Empresa[]=[];
  empresa: any = {}; 
  resultsPage: ResultsPage = <ResultsPage>{};
  currentPage: number = 1;
  sizePage: number =10;
  searchTerm: string = '';
  searching: boolean= false;
  searchFailed: boolean =false;
  searchResults: any[] = []; 
  msjError = "";


  constructor(
    private empresaService: EmpresaService,
    private modalService: ModalService,
    private router: Router,

  ) {}
  goBack(): void {
   
    this.router.navigate(['/Empresas']); 
    this.getEmpresas();


  }
  getEmpresas(): void {
    this.empresaService.byPageDeleted(this.currentPage, this.sizePage).subscribe((dataPackage) => {
      this.resultsPage = <ResultsPage>dataPackage.data;
    });
  }
 
  ngOnInit() {
    this.getEmpresas();
  }

  delete(id: number): void {
    let that = this;

    this.modalService
      .confirm(
        "Eliminar Empresa",
        "¿Esta seguro de que desea eliminar la empresa?",
        "Si elimina la empresa no la prodá recuperar"
      )
      .then(function () {
        that.empresaService.delete(id).subscribe((dataPackage) => { 
          if (dataPackage.status === 400) {
            that.msjError = <string>(<unknown>dataPackage.data);
            that.modalService.error("Error", that.msjError);           
          }else{
            that.getEmpresas();
          }   

         
      });
    });
  }


  reactivateEmpresa(id:number): void {
    this.empresaService.reactivate(id).subscribe(dataPackage => {
      
       this.getEmpresas();
      
    });
  }

  

onPageChangeRequested(page: number): void {
this.currentPage = page;
this.getEmpresas();
}
  

}
