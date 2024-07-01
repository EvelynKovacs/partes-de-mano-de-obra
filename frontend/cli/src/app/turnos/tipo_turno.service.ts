import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { DataPackage } from "../data-package";
import { TipoTurno } from "./tipo_turno";


@Injectable({
    providedIn: 'root'
  })
  export class TipoTurnoService {
  
    private tipoTurnoUrl = 'rest/tipoTurnos';
  
    constructor(
      private http: HttpClient
    ) { }
  
   
    get(id: number): Observable<DataPackage> {
      return this.http.get<DataPackage>(` ${this.tipoTurnoUrl}/id/${id}`);
    }
    
    create(turno: TipoTurno): Observable<DataPackage> {
        return this.http.post<DataPackage>(this.tipoTurnoUrl, turno);
    }
  
    obtenerHorarioTurno(legajo: number, fecha:any): Observable<DataPackage> {
      return this.http.get<DataPackage>(`${this.tipoTurnoUrl}/obtenerHorario/${legajo}/${fecha}`);
    }
    obtenerTipoTurno(legajo: number, fecha:any): Observable<DataPackage> {
        return this.http.get<DataPackage>(`${this.tipoTurnoUrl}/obtenerTurno/${legajo}/${fecha}`);
      }

      search(text: string): Observable<DataPackage> {
        return this.http.get<DataPackage>(`${this.tipoTurnoUrl}/search/${text}`);
      }
  
    }


   
  