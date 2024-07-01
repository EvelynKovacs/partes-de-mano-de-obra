import { Empresa } from "../empresas/empresa";
import { Tarea } from "./tarea";

export interface Proyecto {
    id:number;
    code: string;
    description: string;
    empresa: Empresa;
    tareas: Tarea[];
}