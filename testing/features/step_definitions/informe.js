const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');
const ordenarJson = require('./ordenarJson');


Given('los partes cargados', 
function () {
    return true;
});


When('se solicitan obtener el resumen de partes por día y operario', 
function () {
    let res = request("GET", "http://backend:8080/partes/resumen/null?size=200");
    this.resumen = JSON.parse(res.getBody('utf8')).content;
    for (let res of this.resumen) {
        delete res.fecha;
        delete res.estado;
      }
      //this.resumen = this.resumen.filter(res => res.legajo <= 6000);


});

Then('se obtiene el siguiente resumen', 
function (docString) {
    let resumenEsperado = JSON.parse(docString).data;
    
    let resumenOrdenado = ordenarJson(this.resumen);
    let resumenEsperadoOrdenado = ordenarJson(resumenEsperado);
  


    assert.equal(JSON.stringify(resumenOrdenado), JSON.stringify(resumenEsperadoOrdenado));
  });
