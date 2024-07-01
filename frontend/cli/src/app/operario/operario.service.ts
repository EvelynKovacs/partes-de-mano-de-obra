import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { DataPackage } from "../data-package";
import { Operario } from "./operario";

@Injectable({
    providedIn: 'root'
  })
  export class OperarioService {
  
    private operariosUrl = 'rest/operarios';
  
    constructor(
      private http: HttpClient
    ) { }
  
    all(): Observable<DataPackage> {
      return this.http.get<DataPackage>(this.operariosUrl);
    }
    get(id: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(` ${this.operariosUrl}/id/${id}`);
    }
    
    save(operario: Operario): Observable<DataPackage> {
      return operario.id ? this.http.put<DataPackage>(this.operariosUrl, operario) :
        this.http.post<DataPackage>(this.operariosUrl, operario);
    }
    
    remove(id: number): Observable<DataPackage> {
      return this.http.delete<DataPackage>(`${this.operariosUrl}/${id}`);
    }
  
  

    search(text: string): Observable<DataPackage> {
        return this.http.get<DataPackage>(`${this.operariosUrl}/search/${text}`);
      }

      byPageOperario(page: number, size: number ,textoBusqueda: string): Observable<DataPackage> {
        return this.http.get<DataPackage>(`${this.operariosUrl}/pageOperario?page=${page - 1}&size=${size}&textoBusqueda=${textoBusqueda}`
        );
      }
   
  
}