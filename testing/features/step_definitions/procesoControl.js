const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');
const ordenar = require('json-stable-stringify');



Given('el siguiente listado de partes de mano de obra en estado a validar', function (docString) {
    

  
    let response = request("GET", "http://backend:8080/partes");

    let resumenEsperado = JSON.parse(docString).data;



    for (let res of resumenEsperado) {
        delete res.id;
        delete res.operario.id;
        delete res.proyecto.id;
        delete res.tarea.id;
        
      }

    
     this.resumenValidar = JSON.parse(response.getBody('utf8')).data;
    //this.resumenValidar = this.resumenValidar.filter(res => res.operario.legajo <= 6000);

    for (let res of this.resumenValidar) {
        delete res.id;
        delete res.totalHoras;
        delete res.operario.id;
        delete res.operario.category;
        delete res.operario.turno;
        delete res.operario.fechaTurnoDesde;
        delete res.proyecto.id;
        delete res.proyecto.empresa;
        delete res.proyecto.tareas;
        delete res.tarea.id;
        delete res.logValidacionParteMO;
        delete res.operario.horaTurnoDesde;
        delete res.operario.horaTurnoHasta;
        delete res.operario.fechaTurnoHasta;
        delete res.operario.historialTurnos;
         }

    //this.resumenValidar = this.resumenValidar.filter(res => res.operario.legajo <= 6000);



      let resumenOrdenado = ordenar(this.resumenValidar);
    let resumenEsperadoOrdenado = ordenar(resumenEsperado);

    //console.log(resumenEsperadoOrdenado);


        //console.log("ESPERADO"+JSON.stringify(resumenEsperadoOrdenado));
    //console.log("OBTENIDO"+ JSON.stringify(resumenOrdenado));
    assert.equal(JSON.stringify(resumenOrdenado), JSON.stringify(resumenEsperadoOrdenado));

    
    
});

When('se solicita validar los partes a la fecha {string}', function (fecha) {
   request("GET", "http://backend:8080/partes/validar/"+fecha);
  


});

Then('se obtiene la siguiente respuesta', function (partesString) {
    let partesEsperados = JSON.parse(partesString).data;

    let res = request("GET", "http://backend:8080/partes");
    this.partesObtenidos = JSON.parse(res.getBody('utf8')).data;

    // Eliminar campos no relevantes para la comparación
    const eliminarAtributos = (pmo) => {
        // Ordenar por id antes de eliminarlo
        if (Array.isArray(pmo.logValidacionParteMO)) {
            //deepSort(pmo.logValidacionParteMO);
            pmo.logValidacionParteMO.sort((a, b) => a.id - b.id);
            for (let logs of pmo.logValidacionParteMO) {
                delete logs.id;
                delete logs.estado.id;
                delete logs.validacionParteMO.id;
                delete logs.fecha;
                delete logs.hora;
            }
        } else {
            delete pmo.logValidacionParteMO;
        }

        delete pmo.id;
        delete pmo.operario.id;
        delete pmo.proyecto.id;
        delete pmo.tarea.id;
        delete pmo.estado.id;
        delete pmo.proyecto.empresa;
        delete pmo.proyecto.tareas;
        delete pmo.operario.historialTurnos;
        delete pmo.totalHoras;
    };

    for (let pmo of this.partesObtenidos) {
        eliminarAtributos(pmo);
    }

    for (let pmo of partesEsperados) {
        eliminarAtributos(pmo);
    }

    //console.log("MIO: "+JSON.stringify(this.partesObtenidos));
    //console.log("");

    //console.log("TEST "+JSON.stringify(partesEsperados));

   //let partesEsperadosOrdenados = ordenar(partesEsperados);
    //let partesObtenidosOrdenados = ordenar(this.partesObtenidos);

    assert.equal(JSON.stringify(this.partesObtenidos),JSON.stringify(partesEsperados));
});

