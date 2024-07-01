const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');

Given('el operario con legajo {int} y nombre {string} que trabaja en el turno {string} desde {string}', function (legajo, nombre, turno, fechaTurnoDesde) {
    let response = request("GET", `http://backend:8080/operarios/legajo/${legajo}`);
    let data = JSON.parse(response.getBody('utf8'));
    this.operario = data.data; 
    
});

Given('que trabajó el día {string} para el proyecto {string} en la tarea {string} desde las {string} horas hasta las {string} horas', function (fechaParte, proyecto, tarea, horaDesde, horaHasta) {
    let proyectoResponse = request("GET", `http://backend:8080/proyectos/code/${proyecto}`);
    let proyectoData = JSON.parse(proyectoResponse.getBody('utf8'));
    this.proyecto = proyectoData.data; 


    let tareaResponse = request("GET", `http://backend:8080/tareas/code/${tarea}`);
    let tareaData = JSON.parse(tareaResponse.getBody('utf8'));
    this.tarea = tareaData.data; 

    const minutosDesde = parseInt(horaDesde.split(':')[0]) * 60 + parseInt(horaDesde.split(':')[1]);
    const minutosHasta = parseInt(horaHasta.split(':')[0]) * 60 + parseInt(horaHasta.split(':')[1]);

    const horasFloat = (minutosHasta - minutosDesde) / 60;


    this.parte = {
        fecha: fechaParte,
        horaDesde: horaDesde,
        horaHasta: horaHasta,
        totalHoras: horasFloat.toFixed(2), 
        operario: this.operario,
        proyecto: this.proyecto,
        tarea: this.tarea
        
    };

});

When('se solicitan generar el parte', function () {
    let res = request("POST", "http://backend:8080/partes", {
        json: this.parte,
    });

    this.actualAnswer = JSON.parse(res.getBody('utf8'));
    this.status = res.statusCode;
    return assert.equal(res.statusCode, 200);
});

Then('se obtiene {int} con {string}', function (statusCode, statusText) {
    assert.equal(this.status, statusCode);
    assert.equal(this.actualAnswer.message, statusText);
});
