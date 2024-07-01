import { Injectable } from '@angular/core';
import { Empresa } from './empresa';
import { Observable } from 'rxjs';
import { DataPackage } from '../data-package'; 
import { HttpClient  } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class EmpresaService {

  private empresasUrl = 'rest/empresas';



  constructor(
    private http: HttpClient
  ) { }

  all(): Observable<DataPackage> {
    return this.http.get<DataPackage>(this.empresasUrl);
  }
  get(id: number): Observable<DataPackage> {
    return this.http.get<DataPackage>(` ${this.empresasUrl}/id/${id}`);
  }
  
  save(empresa: Empresa): Observable<DataPackage> {
    return empresa.id ? this.http.put<DataPackage>(this.empresasUrl, empresa) :
      this.http.post<DataPackage>(this.empresasUrl, empresa);
  }
  
  remove(id: number): Observable<DataPackage> {
    return this.http.delete<DataPackage>(`${this.empresasUrl}/${id}`);
  }
  delete(id: number): Observable<DataPackage> {
    return this.http.delete<DataPackage>(`${this.empresasUrl}/id/${id}`);
  }

  byPage(page: number, size: number): Observable<DataPackage> {
    return this.http.get<DataPackage>(`${this.empresasUrl}/page?page=${page - 1}&size=${size}`);
  }
  byPageDeleted(page: number, size: number): Observable<DataPackage> {
    return this.http.get<DataPackage>(`${this.empresasUrl}/pageDel?page=${page - 1}&size=${size}`);
  }

  reactivate(id: number): Observable<DataPackage> {
    return this.http.post<DataPackage>(`${this.empresasUrl}/${id}`, {});
  }

  search(text: string): Observable<DataPackage> {
    return this.http.get<DataPackage>(`${this.empresasUrl}/search/${text}`);
  }
  
   


 


}