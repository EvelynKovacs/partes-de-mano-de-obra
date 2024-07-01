import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { EmpresasComponent } from './empresas/empresas.component';
import { EmpresasDetailComponent } from './empresas/empresas-detail.component';
import { ProyectoComponent } from './proyectos/proyecto.component';
import { ProyectosDetailComponent } from './proyectos/proyectos-detail.component';
import { EmpresaDeletedComponent } from './empresas/empresa-deleted.component';
import { ParteMOComponent } from './partes/parteMO.component';
import { ParteMODetailComponent } from './partes/parte-mo-detail.component';
import { ResumenOperarioComponent } from './partes/resumen-operario.component';
import { PartesOperarioFechaComponent } from './partes/partes-operario-fecha.component';
import { OperarioDetailComponent } from './operario/operario-detail.component';
import { OperarioComponent } from './operario/operario.component';

export const routes: Routes = [

    {path: '',component: HomeComponent},
    {path: 'Empresas', component: EmpresasComponent},
    {path: 'Empresas/:id', component: EmpresasDetailComponent},
    {path: 'EmpresasEliminadas', component: EmpresaDeletedComponent},
    {path: 'Proyectos', component: ProyectoComponent},
    {path: 'Proyectos/:id', component: ProyectosDetailComponent},
    {path: 'Partes', component: ParteMOComponent},
    {path: 'Partes/:id', component: ParteMODetailComponent},
    {path: 'Resumen', component: ResumenOperarioComponent},
    {path: 'Partes/operario/:legajo/:fecha', component: PartesOperarioFechaComponent },
    {path: 'Operarios', component: OperarioComponent},
    {path: 'Operarios/:id', component: OperarioDetailComponent},







];
