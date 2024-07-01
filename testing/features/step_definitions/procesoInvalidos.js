 const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');
const deepSort = require('deep-sort-object');

Given('el parte "{string}" que está inválido',
function(parteString){
    
    parte = JSON.parse(parteString);
  

    let response = request("GET", `http://backend:8080/partes/parteDadoProyectoYTarea/${parte.fecha}/${parte.operario.legajo}/${parte.proyecto.code}/${parte.tarea.code}`);
    this.parteObtenido = JSON.parse(response.getBody('utf8')).data;

});
let fueValidado=false;


When('se corrige el "{string}"', 
function (parteCorregidoString) {

    this.parteCorregido = JSON.parse(parteCorregidoString);


    if (this.parteCorregido.estado.nombre == 'validado'){
        if(!fueValidado){
       this.parteValidado = request('GET', encodeURI(`http://backend:8080/partes/validar_forzado/${this.parteCorregido.operario.legajo}/${this.parteCorregido.fecha}`));
        //console.log("VALIDA");
        this.parteValidadoSuper = JSON.parse(this.parteValidado.getBody('utf8')).data;
       


        fueValidado=true;}
        else{
        this.parteValidado=request("GET", `http://backend:8080/partes/parteDadoProyectoYTarea/${parte.fecha}/${parte.operario.legajo}/${parte.proyecto.code}/${parte.tarea.code}`);
        
        }
    } else{

        const minutosDesde = parseInt(this.parteCorregido.horaDesde.split(':')[0]) * 60 + parseInt(this.parteCorregido.horaDesde.split(':')[1]);
    const minutosHasta = parseInt(this.parteCorregido.horaHasta.split(':')[0]) * 60 + parseInt(this.parteCorregido.horaHasta.split(':')[1]);

    const horasFloat = (minutosHasta - minutosDesde) / 60;



        this.parteCorregido.id = this.parteObtenido.id;
        this.parteCorregido.operario = this.parteObtenido.operario;    
        this.parteCorregido.proyecto = this.parteObtenido.proyecto;    
        this.parteCorregido.tarea = this.parteObtenido.tarea;
        this.parteCorregido.logValidacionParteMO = this.parteObtenido.logValidacionParteMO;
        this.parteCorregido.totalHoras=horasFloat.toFixed(2);

        //console.log("INFO: "+JSON.parse(this.parteCorregido.getBod));
        let resultado = request('PUT', 
        'http://backend:8080/partes', {
            json: this.parteCorregido
        });
        //console.log("CORREGIDO: "+resultado.body);
        this.respuestaCorregido = JSON.parse(resultado.body);

        this.respuestaCorregidoData = JSON.parse(resultado.getBody('utf8')).data;

        if (!Array.isArray(this.respuestaCorregidoData)) {
            this.respuestaCorregidoData = [this.respuestaCorregidoData];
        }
        
        for (let res of this.respuestaCorregidoData) {
            delete res.id;
            delete res.operario.id;
            delete res.proyecto.id;
            delete res.tarea.id;
            delete res.totalHoras;
            delete res.operario.category;
            delete res.operario.historialTurnos;
            delete res.proyecto.empresa;
            delete res.proyecto.tareas;
            delete res.logValidacionParteMO;
        }
         
    }
});
       
    
Then('se espera el siguiente resultado de correccion de partes "{string}"',
function (respuesta) {

    respuesta = JSON.parse(respuesta);

    if (!Array.isArray(respuesta.data)) {
        respuesta.data = [respuesta.data];
    }
    for (let res of respuesta.data) {
        delete res.id;
        delete res.operario.id;
        delete res.proyecto.id;
        delete res.tarea.id;
    }
    let partesEsperadosOrdenados = deepSort(respuesta.data);


    if (this.parteValidado){
        //console.log("MENSAJE: "+JSON.parse(this.parteValidado.body).message);
        assert.equal(respuesta.StatusText, JSON.parse(this.parteValidado.body).message);
        assert.equal(respuesta.StatusCode, JSON.parse(this.parteValidado.body).status);

    } else {
        //console.log("OTRO CORREG: "+JSON.stringify(this.respuestaCorregidoData));

        assert.equal(respuesta.StatusText, this.respuestaCorregido.message);
        assert.equal(respuesta.StatusCode, this.respuestaCorregido.status);
      
            let partesObtenidosOrdenados = deepSort(this.respuestaCorregidoData);

        assert.equal( JSON.stringify(partesObtenidosOrdenados),JSON.stringify(partesEsperadosOrdenados));


    }

});

Given('el siguiente listado de partes de mano de obra en estado a validar para la correccion',
function(partesString){
    let partesEsperados = JSON.parse(partesString).partesMO;
    let response = request('GET',"http://backend:8080/partes/partesEstadoCorregido");
    this.partesObtenidos=JSON.parse(response.getBody('utf8')).data;

});

When('se solicita validar los partes a la fecha {string} para la correccion',
function (fecha) {
    this.requestValidar = request('GET', encodeURI(`http://backend:8080/partes/validar/${fecha}`)).data;
    let response = request('GET', "http://backend:8080/partes");
    this.partesObtenidos=JSON.parse(response.getBody('utf8')).data;
    this.partesObtenidos = this.partesObtenidos.filter(res => res.operario.legajo >= 4000 && res.operario.legajo <= 6000);

    
});

Then('se obtiene la siguiente respuesta de correccion de partes',
function (partesString) {
    let partesEsperados = JSON.parse(partesString).partesMO;
   
        for (let pmo of this.partesObtenidos) {
          
            delete pmo.id;
            pmo.fecha = pmo.fecha.substring(0, 10);
            delete pmo.totalHoras;
            delete pmo.operario.id;
            delete pmo.operario.category;
            delete pmo.operario.turno;
            delete pmo.operario.fechaTurnoDesde;
            delete pmo.operario.fechaTurnoHasta;
            delete pmo.operario.horaTurnoDesde;
            delete pmo.operario.horaTurnoHasta;
            delete pmo.proyecto.id;
            delete pmo.proyecto.empresa;
            delete pmo.proyecto.tareas;
            delete pmo.tarea.id;
            delete pmo.estado.id;
            delete pmo.operario.historialTurnos;
            if (pmo.estado.nombre !== 'inválido'){
                delete pmo.logValidacionParteMO;
            }

            // Comprobación de si logsValidacion es un iterable
            if (Array.isArray(pmo.logValidacionParteMO)) {
                if (pmo.logValidacionParteMO) {
                    pmo.logValidacionParteMO = pmo.logValidacionParteMO.filter(log => {
                        if (log.estado.nombre == 'caducado') {
                            return false;
                        }
                        delete log.id;
                        delete log.estado.id;
                        delete log.validacionParteMO.id;
                        delete log.fecha;
                        delete log.hora;
                        return true;
                    });
                }
            }
        }


        for (let pmo of partesEsperados) {
            delete pmo.id;
            delete pmo.estado.id;
            delete pmo.operario.id;
            delete pmo.proyecto.id;
            delete pmo.tarea.id;

            // Comprobación de si logValidacion es un iterable
            if (Array.isArray(pmo.logValidacionParteMO)) {
                for (let logs of pmo.logValidacionParteMO) {
                    delete logs.id;
                    delete logs.estado.id;
                    delete logs.validacionParteMO.id;
                }
            } else {
                delete pmo.logValidacionParteMO;
            }
        }


        let partesEsperadosOrdenados = deepSort(partesEsperados);
        let partesObtenidosOrdenados = deepSort(this.partesObtenidos);


        assert.equal(JSON.stringify(partesObtenidosOrdenados),JSON.stringify(partesEsperadosOrdenados));
});
