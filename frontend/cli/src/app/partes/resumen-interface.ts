import { Time } from "@angular/common";

export interface Resumen {
    fecha:any;
    nombre:String;
    legajo:Number;
    ingreso:Time;
    egreso:Time;
    horas:Time;
    horasPartes:Time;
    estado: String;
}
