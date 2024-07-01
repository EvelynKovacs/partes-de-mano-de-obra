const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');


    
    


Given('que se ingresa el operario con legajo {string}, con nombre {string} cuya categoría es {string} y pertenece al turno {string} a partir de {string}',
function (legajo, nombre, categoria, turno, fechaTurnoDesde) {

     let res = request('GET', `http://backend:8080/tipoTurnos/id/`+turno);
    this.tipoTurno=JSON.parse(res.body, "utf8").data; 

     this.operario = {
        legajo: legajo,
        name: nombre,
        category: categoria,
        historialTurnos: []
    };
    this.fechaDesdeTurno=fechaTurnoDesde; 

});


When('presiono el botón de guardar en operarios', function () {
     let resOper = request("POST", "http://backend:8080/operarios", {
        json: this.operario
    });
    this.actualAnswer = JSON.parse(resOper.body, "utf8");
    oper=this.actualAnswer.data;
    oper.historialTurnos.push({fechaDesde:this.fechaDesdeTurno,tipoTurno:this.tipoTurno});

    let res = request("PUT", "http://backend:8080/operarios", {
        json: oper,
    });
   

    return assert.equal(resOper.statusCode, 200); 
  
    
});


Then('se espera la siguiente {string} de operarios', function (respuesta) {
    assert.equal(this.actualAnswer.message, respuesta);  

  });

 
