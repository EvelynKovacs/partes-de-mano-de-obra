import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { DataPackage } from "../data-package";
import { ParteMO } from "./parteMO";

@Injectable({
    providedIn: 'root'
  })
  export class ParteMOService {
  
    private partesUrl = 'rest/partes';
  
    constructor(
      private http: HttpClient
    ) { }
  
    all(): Observable<DataPackage> {
      return this.http.get<DataPackage>(this.partesUrl);
    }
    get(id: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(` ${this.partesUrl}/id/${id}`);
    }
    
   


    save(parteMO: ParteMO): Observable<DataPackage> {
      if (!parteMO.id || parteMO.id < 0) {
        return this.http.post<DataPackage>(this.partesUrl, parteMO);
      } else {
        return this.http.put<DataPackage>(this.partesUrl, parteMO);
      }
    }
 
    anular(id: number): Observable<DataPackage> {
      return this.http.delete<DataPackage>(`${this.partesUrl}/${id}`);
    }
  
    byPage(page: number, size: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/page?page=${page - 1}&size=${size}`);
    }
    ultimos(n: Number): Observable<DataPackage>{
      return this.http.get<DataPackage>(`${this.partesUrl}/ultimos/${n}`);
    }

   
    resumenFecha(fecha: any,page: number, size: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/resumen/${fecha}?page=${page - 1}&size=${size}`);
    }
    partesOperarioFecha(legajo:number,fecha: any): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/operario/${legajo}/${fecha}`);
    }
    validar(fecha: any): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/validar/${fecha}`);
    }
    partesInvalidos(fecha: any,page: number, size: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/invalidos/${fecha}?page=${page - 1}&size=${size}`);
    }
    partesValidos(fecha: any,page: number, size: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/validos/${fecha}?page=${page - 1}&size=${size}`);
    }
    todosLosPartes(fecha: any,page: number, size: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/todos/${fecha}?page=${page - 1}&size=${size}`);
    }
    getLogsFechaOperario(id:number): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.partesUrl}/logs/${id}`);
    }
   
    validaSupervisor(legajo:number,fecha:any){
      return this.http.get<DataPackage>(`${this.partesUrl}/validar_forzado/${legajo}/${fecha}`);
    }
    rechazaSupervisor(legajo:number,fecha:any){
      return this.http.get<DataPackage>(`${this.partesUrl}/rechazar/${legajo}/${fecha}`);
    }

   
    }


   
  