import { HistorialTurnos } from "../turnos/historial_turnos";
import { CategoriaOperario } from "./categoria";

export interface Operario {
    id:number;
    legajo: number;
    name: string;
    category: CategoriaOperario;
    historialTurnos: HistorialTurnos[];

   
}