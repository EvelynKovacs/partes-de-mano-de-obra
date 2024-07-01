import { Time } from "@angular/common";
import { Operario } from "../operario/operario";
import { Proyecto } from "../proyectos/proyecto";
import { Tarea } from "../proyectos/tarea";
import { Estado } from "../procesoValidacion/estado";
import { LogValidacionParteMO } from "../procesoValidacion/log-validacion-parte-mo";


export interface ParteMO {

    id:number;
    fecha: string;
    horaDesde: Date;
    horaHasta: Date;
    totalHoras:number;
    operario: Operario;
    proyecto: Proyecto;
    tarea: Tarea;
    estado: Estado;
    logValidacionParteMO: LogValidacionParteMO[];

    }