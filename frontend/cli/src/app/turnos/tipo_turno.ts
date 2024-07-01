import { Horario } from "./horario";

export interface TipoTurno {
    id:number;
    tipo: String;
    nombre: String;
    fechaArranque: any;
    cantDiasTrabajo: number;
    cantDiasFranco: number;
    horarios: Horario[];

   
}
