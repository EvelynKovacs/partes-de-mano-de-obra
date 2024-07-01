import { Time } from "@angular/common";
import { ParteMO } from "../partes/parteMO";
import { Estado } from "./estado";
import { ValidacionParteMO } from "./validacion-parte-mo";

export interface LogValidacionParteMO {
    id: Number;
    hora: Time;
    estado: Estado;
    validacionParteMO: ValidacionParteMO;
    fecha: Date;
}