package unpsjb.labprog.backend.model;

public enum TipoValidacion {
    MENSAJE{
        public String toString(){
            return "Mensaje";
        }
    },

    ADVERTENCIA{
        public String toString(){
            return "Advertencia";
        }
    },
    ERROR{
        public String toString(){
            return "Error";
        }
    },
    GRAVE{
        public String toString(){
            return "Error Grave";
        }
    }
}