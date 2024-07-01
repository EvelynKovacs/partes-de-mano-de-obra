import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { DataPackage } from '../data-package'; 
import { HttpClient  } from '@angular/common/http';
import { Proyecto } from './proyecto';


@Injectable({
  providedIn: 'root'
})
export class ProyectoService {

  private proyectosUrl = 'rest/proyectos';



  constructor(
    private http: HttpClient
  ) { }

  all(): Observable<DataPackage> {
    return this.http.get<DataPackage>(this.proyectosUrl);
  }
  get(id: number): Observable<DataPackage> {
    return this.http.get<DataPackage>(` ${this.proyectosUrl}/id/${id}`);
  }
  
  save(proyecto: Proyecto): Observable<DataPackage> {
    return proyecto.id ? this.http.put<DataPackage>(this.proyectosUrl, proyecto) :
      this.http.post<DataPackage>(this.proyectosUrl, proyecto);
  }
  
  remove(id: number): Observable<DataPackage> {
    return this.http.delete<DataPackage>(`${this.proyectosUrl}/${id}`);
  }

  byPage(page: number, size: number): Observable<DataPackage> {
    return this.http.get<DataPackage>(`${this.proyectosUrl}/page?page=${page - 1}&size=${size}`);
  }

  search(text: string): Observable<DataPackage> {
    return this.http.get<DataPackage>(`${this.proyectosUrl}/search/${text}`);
  }

  searchTareas(text: string, proyectoId: Number): Observable<DataPackage> {
    return this.http.get<DataPackage>(`${this.proyectosUrl}/${proyectoId}/searchTarea/${text}`);
  }

  tareas(proyectoId: number): Observable<DataPackage>{
    return this.http.get<DataPackage>(`${this.proyectosUrl}/${proyectoId}/tareas`);
  }    

 


}