const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');

//primer escenario
Given('que se ingresa el cliente con {string} , {string} y {string}', function (nombre, cuit, observaciones) {
    this.cliente = {
        "name": nombre,
        "cuit": cuit,
        "observations": observaciones
    }
    
     

});

When('presiono el botón de guardar', function () {
    let res = request('POST', 'http://backend:8080/empresas', {
        json: this.cliente
    });

    this.actualAnswer = JSON.parse(res.body, 'utf8');
    return assert.equal(res.statusCode, 200);
});



Then('se espera la siguiente {string}', function (respuesta) {
    assert.equal(this.actualAnswer.message, respuesta);  
  });

