import { CommonModule, Location } from '@angular/common';
import { Component } from '@angular/core';
import { RouterModule,Router } from '@angular/router';
import { PaginationComponent } from '../pagination/pagination.component';
import { ResultsPage } from "../results-page";
import { EmpresaService } from './empresa.service';
import { ModalService } from "../modal/modal.service";
import { Empresa } from './empresa';
import { FormsModule } from '@angular/forms';
import { Observable, catchError, debounceTime, distinctUntilChanged, map, of, switchMap, tap } from 'rxjs';
import { NgbTypeaheadModule, NgbTypeaheadSelectItemEvent } from '@ng-bootstrap/ng-bootstrap';





@Component({
  selector: 'app-empresas',
  standalone: true,
  imports: [CommonModule,RouterModule, PaginationComponent,FormsModule,NgbTypeaheadModule],
  templateUrl: 'empresas.component.html',
  styles: ``
})
export class EmpresasComponent {

  empresas: Empresa[]=[];
  empresa: any = {}; 
  resultsPage: ResultsPage = <ResultsPage>{};
  currentPage: number = 1;
  sizePage: number =10;
  searchTerm: string = '';
  searching: boolean= false;
  searchFailed: boolean =false;
  searchResults: any[] = []; 

  
 


  constructor(
    private empresaService: EmpresaService,
    private modalService: ModalService,
    private router: Router,
    private location:  Location

  ) {}
  goBack(): void {
   this.location.back();


  }
  getEmpresas(): void {
    this.empresaService.byPage(this.currentPage, this.sizePage).subscribe((dataPackage) => {
      this.resultsPage = <ResultsPage>dataPackage.data;
    });
  }
 
  ngOnInit() {
    this.getEmpresas();
  }
  

  remove(id: number): void {
    let that = this;

    this.modalService
      .confirm(
        "Eliminar Empresa",
        "¿Esta seguro de que desea eliminar la empresa?",
        "Si elimina la empresa, podra reactivarla en cualquier momento."
      )
      .then(function () {
        that.empresaService.remove(id).subscribe((dataPackage) => that.getEmpresas());
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
                  return empresas.map((empresa) => ({  id: empresa.id,
                    name: `${empresa.name} (${empresa.cuit})`,
                    empresa: empresa }));
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
  
      resultFormat(value:any){
        return value.name;
      }
      inputFormat(value:any){
        return value ? value.name : null;
      }

      redirectToEmpresa(event: NgbTypeaheadSelectItemEvent<any>) {

        if (event.item && event.item.id) {
          const id = event.item.id;
          this.router.navigate(['/Empresas', id]); 
        }
      }

      
    
  onPageChangeRequested(page: number): void {
    this.currentPage = page;
    this.getEmpresas();
  }
}
