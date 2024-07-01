import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { DataPackage } from '../data-package'; 
import { HttpClient  } from '@angular/common/http';
import { Proyecto } from './proyecto';


@Injectable({
  providedIn: 'root'
})
export class TareaService {

  private tareasUrl = 'rest/tareas';



  constructor(
    private http: HttpClient
  ) { }


  remove(code: string): Observable<DataPackage> {
    return this.http.delete<DataPackage>(`${this.tareasUrl}/${code}`);
  }

  

 
 


}