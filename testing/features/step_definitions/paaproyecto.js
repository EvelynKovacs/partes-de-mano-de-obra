const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const request = require('sync-request');

let empresa;
let proyecto;

Given('la empresa con nombre {string} y cuit {string}', function (nombre, cuit) {
    let res = request("GET", "http://backend:8080/empresas/" + cuit);
    this.response = JSON.parse(res.body, "utf8");
    assert.equal(this.response.status, 200);

    empresa = this.response.data; 
});

Given('que se ingresa el proyecto con código {string} y descripción {string}', function (code, description) {
    proyecto = {
        code: code,
        description: description,
        empresa: {
            id: empresa.id,
            name: empresa.name,
            cuit: empresa.cuit,
            observations: empresa.observations
        },
        tareas:[] 
    };


    let res = request("GET", "http://backend:8080/proyectos/code/" + code);
    this.response = JSON.parse(res.body, "utf8");
    assert.equal(this.response.status, 404);
});


When('se solicitan guardar el nuevo proyecto', function () {
    let res = request("POST", "http://backend:8080/proyectos", {
        json: proyecto,
    });
    

    this.actualAnswer = JSON.parse(res.body, "utf8");
    return assert.equal(res.statusCode, 200);
});

Then('se obtiene la siguiente {string}', function (respuesta) {
    assert.equal( this.actualAnswer.message, respuesta);
});



//Segundo escenario
Given('el proyecto con código {string} que pertenece al cliente cuit {string}', function (code, cuit) {
    let res = request("GET", "http://backend:8080/proyectos/code/" + code);
    this.response = JSON.parse(res.body, "utf8");
    proyecto = this.response.data; 
});


When('se solicitan guardar una nueva tarea con código {string} y descripción {string} al proyecto', function (code,description) {
    proyecto.tareas.push({ code:code, description:description });

    let res = request("PUT", "http://backend:8080/proyectos", {
        json: proyecto,
    });
   
    this.actualAnswer  = JSON.parse(res.body, "utf8");
    return assert.equal(res.statusCode, 200);
});


