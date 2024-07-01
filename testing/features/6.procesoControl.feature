# language: es

Característica: Validar partes de mano de obra
   Gestión de control, validación, revisión y login de partes de mano de obra

Escenario: valida partes de MO en estados generado y/o corregido
   Dado el siguiente listado de partes de mano de obra en estado a validar
   """
  	{
		"data": [
		{"id":1,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:56:00","operario":{"id":1000,"legajo":1000,"name":"Hermenegildo Sabat"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":2,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:56:00","horaHasta":"13:00:00","operario":{"id":1000,"legajo":1000,"name":"Hermenegildo Sabat"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":3,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:00:00","horaHasta":"15:00:00","operario":{"id":1000,"legajo":1000,"name":"Hermenegildo Sabat"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1003,"code":"1003","description":"limpieza"}},
		{"id":4,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:56:00","operario":{"id":2000,"legajo":2000,"name":"Mariela Williams"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":5,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:56:00","horaHasta":"13:00:00","operario":{"id":2000,"legajo":2000,"name":"Mariela Williams"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":6,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:00:00","horaHasta":"15:00:00","operario":{"id":2000,"legajo":2000,"name":"Mariela Williams"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1003,"code":"1003","description":"limpieza"}},
		{"id":7,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"08:23:00","horaHasta":"10:56:00","operario":{"id":3000,"legajo":3000,"name":"Pedro Almodovar"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":8,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:56:00","horaHasta":"13:00:00","operario":{"id":3000,"legajo":3000,"name":"Pedro Almodovar"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":9,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"17:26:00","operario":{"id":4000,"legajo":4000,"name":"Manuel Belgrano"},"proyecto":{"id":2000,"code":"2000","description":"Montaje galpón norte"},"tarea":{"id":2004,"code":"2004","description":"Limpieza sector montaje"}},
		{"id":10,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"17:00:00","horaHasta":"19:00:00","operario":{"id":4000,"legajo":4000,"name":"Manuel Belgrano"},"proyecto":{"id":2000,"code":"2000","description":"Montaje galpón norte"},"tarea":{"id":2010,"code":"2010","description":"encofrado"}},
		{"id":11,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:00:00","horaHasta":"21:00:00","operario":{"id":4000,"legajo":4000,"name":"Manuel Belgrano"},"proyecto":{"id":3000,"code":"3000","description":"Construcción vereda sur"},"tarea":{"id":3002,"code":"3002","description":"hormigonado"}},
		{"id":12,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"17:26:00","operario":{"id":5000,"legajo":5000,"name":"Soledad Solari"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":13,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:26:00","horaHasta":"19:00:00","operario":{"id":5000,"legajo":5000,"name":"Soledad Solari"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4010,"code":"4010","description":"preparación"}},
		{"id":14,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"20:00:00","horaHasta":"21:00:00","operario":{"id":5000,"legajo":5000,"name":"Soledad Solari"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":15,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"11:00:00","operario":{"id":6000,"legajo":6000,"name":"Mariano Moreno"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":16,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:00:00","horaHasta":"14:00:00","operario":{"id":6000,"legajo":6000,"name":"Mariano Moreno"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":17,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:00:00","horaHasta":"15:00:00","operario":{"id":6000,"legajo":6000,"name":"Mariano Moreno"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1003,"code":"1003","description":"limpieza"}},
		{"id":18,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"11:00:00","operario":{"id":7000,"legajo":7000,"name":"Eric Anderson"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":19,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:00:00","horaHasta":"13:00:00","operario":{"id":7000,"legajo":7000,"name":"Eric Anderson"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":20,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:00:00","horaHasta":"15:00:00","operario":{"id":7000,"legajo":7000,"name":"Eric Anderson"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1003,"code":"1003","description":"limpieza"}},
		{"id":21,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"18:00:00","operario":{"id":8000,"legajo":8000,"name":"Pepe Martinez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":22,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:00:00","horaHasta":"20:00:00","operario":{"id":8000,"legajo":8000,"name":"Pepe Martinez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":23,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"20:00:00","horaHasta":"21:00:00","operario":{"id":8000,"legajo":8000,"name":"Pepe Martinez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1003,"code":"1003","description":"limpieza"}},
		{"id":24,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"17:25:00","operario":{"id":9000,"legajo":9000,"name":"Santiago Segura"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":25,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"17:25:00","horaHasta":"19:30:00","operario":{"id":9000,"legajo":9000,"name":"Santiago Segura"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":26,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"19:30:00","horaHasta":"21:00:00","operario":{"id":9000,"legajo":9000,"name":"Santiago Segura"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":27,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-06-10","horaDesde":"15:00:00","horaHasta":"21:00:00","operario":{"id":10000,"legajo":10000,"name":"Ana Gomez"},"proyecto":{"id":3000,"code":"3000","description":"Construcción vereda sur"},"tarea":{"id":3002,"code":"3002","description":"hormigonado"}},
		{"id":28,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-02-18","horaDesde":"15:00:00","horaHasta":"18:00:00","operario":{"id":11000,"legajo":11000,"name":"Juan Perez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":29,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-02-18","horaDesde":"18:00:00","horaHasta":"21:00:00","operario":{"id":11000,"legajo":11000,"name":"Juan Perez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":30,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2018-05-22","horaDesde":"07:00:00","horaHasta":"11:25:00","operario":{"id":12000,"legajo":12000,"name":"Lucia Fernandez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":31,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2018-05-22","horaDesde":"10:25:00","horaHasta":"14:30:00","operario":{"id":12000,"legajo":12000,"name":"Lucia Fernandez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":32,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2018-05-22","horaDesde":"14:30:00","horaHasta":"15:00:00","operario":{"id":12000,"legajo":12000,"name":"Lucia Fernandez"},"proyecto":{"id":2000,"code":"2000","description":"Montaje galpón norte"},"tarea":{"id":2004,"code":"2004","description":"Limpieza sector montaje"}},
		{"id":33,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-03-22","horaDesde":"15:00:00","horaHasta":"16:00:00","operario":{"id":13000,"legajo":13000,"name":"Martin Rodriguez"},"proyecto":{"id":3000,"code":"3000","description":"Construcción vereda sur"},"tarea":{"id":3002,"code":"3002","description":"hormigonado"}},
		{"id":34,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-03-22","horaDesde":"16:00:00","horaHasta":"20:00:00","operario":{"id":13000,"legajo":13000,"name":"Martin Rodriguez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4010,"code":"4010","description":"preparación"}},
		{"id":35,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-03-22","horaDesde":"20:00:00","horaHasta":"21:00:00","operario":{"id":13000,"legajo":13000,"name":"Martin Rodriguez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1003,"code":"1003","description":"limpieza"}},
		{"id":36,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"12:00:00","operario":{"id":14000,"legajo":14000,"name":"Carlos Santos"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":37,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"12:00:00","horaHasta":"15:00:00","operario":{"id":14000,"legajo":14000,"name":"Carlos Santos"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1002,"code":"1002","description":"plegadora perfiles"}},
		{"id":38,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"12:25:00","operario":{"id":15000,"legajo":15000,"name":"Maria Lopez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":39,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"12:25:00","horaHasta":"13:30:00","operario":{"id":15000,"legajo":15000,"name":"Maria Lopez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":40,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":15000,"legajo":15000,"name":"Maria Lopez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":41,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"18:25:00","operario":{"id":16000,"legajo":16000,"name":"Alberto Suarez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":42,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:25:00","horaHasta":"20:30:00","operario":{"id":16000,"legajo":16000,"name":"Alberto Suarez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":43,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"20:30:00","horaHasta":"21:00:00","operario":{"id":16000,"legajo":16000,"name":"Alberto Suarez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":44,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"18:25:00","operario":{"id":17000,"legajo":17000,"name":"Sofia Jimenez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":45,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:25:00","horaHasta":"20:30:00","operario":{"id":17000,"legajo":17000,"name":"Sofia Jimenez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":46,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"20:30:00","horaHasta":"21:00:00","operario":{"id":17000,"legajo":17000,"name":"Sofia Jimenez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":47,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"16:25:00","operario":{"id":18000,"legajo":18000,"name":"Ignacio Sosa"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":48,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"16:25:00","horaHasta":"18:30:00","operario":{"id":18000,"legajo":18000,"name":"Ignacio Sosa"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":49,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:30:00","horaHasta":"21:00:00","operario":{"id":18000,"legajo":18000,"name":"Ignacio Sosa"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":50,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"18:25:00","operario":{"id":19000,"legajo":19000,"name":"Teresa Gutierrez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":51,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:25:00","horaHasta":"19:30:00","operario":{"id":19000,"legajo":19000,"name":"Teresa Gutierrez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":52,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"19:30:00","horaHasta":"21:00:00","operario":{"id":19000,"legajo":19000,"name":"Teresa Gutierrez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":53,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"17:25:00","operario":{"id":20000,"legajo":20000,"name":"Andres Martinez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":54,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"17:25:00","horaHasta":"19:30:00","operario":{"id":20000,"legajo":20000,"name":"Andres Martinez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":55,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"19:30:00","horaHasta":"21:00:00","operario":{"id":20000,"legajo":20000,"name":"Andres Martinez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":56,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"16:25:00","operario":{"id":21000,"legajo":21000,"name":"Gabriela Vega"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":57,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"16:25:00","horaHasta":"19:30:00","operario":{"id":21000,"legajo":21000,"name":"Gabriela Vega"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":58,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"19:30:00","horaHasta":"21:00:00","operario":{"id":21000,"legajo":21000,"name":"Gabriela Vega"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":59,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"18:25:00","operario":{"id":22000,"legajo":22000,"name":"Pablo Alvarez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":60,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:25:00","horaHasta":"20:30:00","operario":{"id":22000,"legajo":22000,"name":"Pablo Alvarez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":61,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"20:30:00","horaHasta":"21:00:00","operario":{"id":22000,"legajo":22000,"name":"Pablo Alvarez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":62,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"16:25:00","operario":{"id":23000,"legajo":23000,"name":"Laura Torres"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":63,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"16:25:00","horaHasta":"20:30:00","operario":{"id":23000,"legajo":23000,"name":"Laura Torres"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":64,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"19:30:00","horaHasta":"21:00:00","operario":{"id":23000,"legajo":23000,"name":"Laura Torres"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":65,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"15:00:00","horaHasta":"18:25:00","operario":{"id":24000,"legajo":24000,"name":"Damian Romero"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":66,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:25:00","horaHasta":"20:30:00","operario":{"id":24000,"legajo":24000,"name":"Damian Romero"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":67,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"20:30:00","horaHasta":"21:00:00","operario":{"id":24000,"legajo":24000,"name":"Damian Romero"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":68,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":25000,"legajo":25000,"name":"Claudia Ruiz"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":69,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":25000,"legajo":25000,"name":"Claudia Ruiz"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":70,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":25000,"legajo":25000,"name":"Claudia Ruiz"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":71,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":26000,"legajo":26000,"name":"Francisco Herrera"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":72,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"14:30:00","operario":{"id":26000,"legajo":26000,"name":"Francisco Herrera"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":73,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"14:30:00","horaHasta":"15:00:00","operario":{"id":26000,"legajo":26000,"name":"Francisco Herrera"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":74,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"11:25:00","operario":{"id":27000,"legajo":27000,"name":"Monica Diaz"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":75,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"11:25:00","horaHasta":"13:30:00","operario":{"id":27000,"legajo":27000,"name":"Monica Diaz"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":76,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"14:30:00","horaHasta":"15:00:00","operario":{"id":27000,"legajo":27000,"name":"Monica Diaz"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":77,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"11:25:00","operario":{"id":28000,"legajo":28000,"name":"Javier Morales"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":78,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"11:25:00","horaHasta":"13:30:00","operario":{"id":28000,"legajo":28000,"name":"Javier Morales"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":79,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"14:30:00","horaHasta":"15:00:00","operario":{"id":28000,"legajo":28000,"name":"Javier Morales"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":80,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"16:00:00","horaHasta":"18:25:00","operario":{"id":29000,"legajo":29000,"name":"Veronica Blanco"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":81,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:25:00","horaHasta":"19:30:00","operario":{"id":29000,"legajo":29000,"name":"Veronica Blanco"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":82,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"18:30:00","horaHasta":"21:00:00","operario":{"id":29000,"legajo":29000,"name":"Veronica Blanco"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":83,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":30000,"legajo":30000,"name":"Ricardo Gonzalez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":84,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":30000,"legajo":30000,"name":"Ricardo Gonzalez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":85,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":30000,"legajo":30000,"name":"Ricardo Gonzalez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":86,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:00:00","operario":{"id":31000,"legajo":31000,"name":"Susana Ramirez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":87,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:00:00","horaHasta":"13:30:00","operario":{"id":31000,"legajo":31000,"name":"Susana Ramirez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":88,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":31000,"legajo":31000,"name":"Susana Ramirez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":89,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"11:25:00","operario":{"id":32000,"legajo":32000,"name":"Enrique Navarro"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":90,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"11:25:00","horaHasta":"13:30:00","operario":{"id":32000,"legajo":32000,"name":"Enrique Navarro"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":91,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"14:30:00","horaHasta":"15:00:00","operario":{"id":32000,"legajo":32000,"name":"Enrique Navarro"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":92,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":33000,"legajo":33000,"name":"Rosario Martinez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":93,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":33000,"legajo":33000,"name":"Rosario Martinez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":94,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":33000,"legajo":33000,"name":"Rosario Martinez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":95,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":34000,"legajo":34000,"name":"Fernando Mendez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":96,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":34000,"legajo":34000,"name":"Fernando Mendez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":97,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":34000,"legajo":34000,"name":"Fernando Mendez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":98,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":35000,"legajo":35000,"name":"Patricia Herrera"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":99,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":35000,"legajo":35000,"name":"Patricia Herrera"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":100,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":35000,"legajo":35000,"name":"Patricia Herrera"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":101,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":36000,"legajo":36000,"name":"Guillermo Ortega"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":102,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":36000,"legajo":36000,"name":"Guillermo Ortega"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":103,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":36000,"legajo":36000,"name":"Guillermo Ortega"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":104,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":37000,"legajo":37000,"name":"Isabel Paredes"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":105,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":37000,"legajo":37000,"name":"Isabel Paredes"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":106,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":37000,"legajo":37000,"name":"Isabel Paredes"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},	
		{"id":107,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":38000,"legajo":38000,"name":"Felipe Villanueva"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":108,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":38000,"legajo":38000,"name":"Felipe Villanueva"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":109,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2023-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":38000,"legajo":38000,"name":"Felipe Villanueva"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":110,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-06-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":39000,"legajo":39000,"name":"Natalia Campos"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":111,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-06-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":39000,"legajo":39000,"name":"Natalia Campos"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":112,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-06-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":39000,"legajo":39000,"name":"Natalia Campos"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":113,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-08-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":40000,"legajo":40000,"name":"Alejandro Ruiz"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":114,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-08-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":40000,"legajo":40000,"name":"Alejandro Ruiz"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":115,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-08-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":40000,"legajo":40000,"name":"Alejandro Ruiz"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":116,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-09-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":41000,"legajo":41000,"name":"Daniela Aguilar"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":117,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-09-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":41000,"legajo":41000,"name":"Daniela Aguilar"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":118,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-09-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":41000,"legajo":41000,"name":"Daniela Aguilar"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":119,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-10-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":42000,"legajo":42000,"name":"Victor Rojas"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":120,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-10-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":42000,"legajo":42000,"name":"Victor Rojas"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":121,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-10-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":42000,"legajo":42000,"name":"Victor Rojas"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":122,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":43000,"legajo":43000,"name":"Laura Sánchez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":123,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":43000,"legajo":43000,"name":"Laura Sánchez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":124,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":43000,"legajo":43000,"name":"Laura Sánchez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":125,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":44000,"legajo":44000,"name":"Carlos Fernandez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":126,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-05-12","horaDesde":"10:25:00","horaHasta":"14:30:00","operario":{"id":44000,"legajo":44000,"name":"Carlos Fernandez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":127,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":44000,"legajo":44000,"name":"Carlos Fernandez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":128,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":45000,"legajo":45000,"name":"Marta Jimenez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":129,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":45000,"legajo":45000,"name":"Marta Jimenez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":130,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":45000,"legajo":45000,"name":"Marta Jimenez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":131,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":46000,"legajo":46000,"name":"Antonio González"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":132,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":46000,"legajo":46000,"name":"Antonio González"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":133,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":46000,"legajo":46000,"name":"Antonio González"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":134,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":47000,"legajo":47000,"name":"Carmen Martínez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":135,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":47000,"legajo":47000,"name":"Carmen Martínez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":136,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2022-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":47000,"legajo":47000,"name":"Carmen Martínez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":137,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-05-12","horaDesde":"15:00:00","horaHasta":"16:25:00","operario":{"id":48000,"legajo":48000,"name":"Luis Rodríguez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":138,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-05-12","horaDesde":"16:25:00","horaHasta":"18:30:00","operario":{"id":48000,"legajo":48000,"name":"Luis Rodríguez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":139,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-05-12","horaDesde":"18:30:00","horaHasta":"21:00:00","operario":{"id":48000,"legajo":48000,"name":"Luis Rodríguez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":140,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-05-12","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":49000,"legajo":49000,"name":"Elena Gómez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":141,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-05-12","horaDesde":"10:25:00","horaHasta":"13:30:00","operario":{"id":49000,"legajo":49000,"name":"Elena Gómez"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}},
		{"id":142,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2021-05-12","horaDesde":"13:30:00","horaHasta":"15:00:00","operario":{"id":49000,"legajo":49000,"name":"Elena Gómez"},"proyecto":{"id":1000,"code":"1000","description":"Escalera lateral fundición"},"tarea":{"id":1001,"code":"1001","description":"corte chapa pantógrafo"}},
		{"id":143,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-06-06","horaDesde":"07:00:00","horaHasta":"10:25:00","operario":{"id":50000,"legajo":50000,"name":"Andrés López"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4004,"code":"4004","description":"Limpieza sector granallado"}},
		{"id":144,"estado":{"id":1,"nombre":"generado","descripcion":"Parte de Mano de Obra generado"},"fecha":"2020-06-06","horaDesde":"10:25:00","horaHasta":"15:00:00","operario":{"id":50000,"legajo":50000,"name":"Andrés López"},"proyecto":{"id":4000,"code":"4000","description":"Granallado edificio municipal"},"tarea":{"id":4002,"code":"4002","description":"granallado"}}

  ]
}
"""
   Cuando se solicita validar los partes a la fecha "2023-05-13"
   Entonces se obtiene la siguiente respuesta

   """
	{
  "data": [
    {
      "id": 45380,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:56:00",
      "totalHoras": 3.93,
      "operario": {
        "id": 25830,
        "legajo": 1000,
        "name": "Hermenegildo Sabat",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11576,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38591,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45381,
      "fecha": "2023-05-12",
      "horaDesde": "10:56:00",
      "horaHasta": "13:00:00",
      "totalHoras": 2.07,
      "operario": {
        "id": 25830,
        "legajo": 1000,
        "name": "Hermenegildo Sabat",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11576,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38592,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45382,
      "fecha": "2023-05-12",
      "horaDesde": "13:00:00",
      "horaHasta": "15:00:00",
      "totalHoras": 2,
      "operario": {
        "id": 25830,
        "legajo": 1000,
        "name": "Hermenegildo Sabat",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11576,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27405,
        "code": "1003",
        "description": "limpieza"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38593,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45383,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:56:00",
      "totalHoras": 3.93,
      "operario": {
        "id": 25831,
        "legajo": 2000,
        "name": "Mariela Williams",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11577,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38629,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45384,
      "fecha": "2023-05-12",
      "horaDesde": "10:56:00",
      "horaHasta": "13:00:00",
      "totalHoras": 2.07,
      "operario": {
        "id": 25831,
        "legajo": 2000,
        "name": "Mariela Williams",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11577,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38630,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45385,
      "fecha": "2023-05-12",
      "horaDesde": "13:00:00",
      "horaHasta": "15:00:00",
      "totalHoras": 2,
      "operario": {
        "id": 25831,
        "legajo": 2000,
        "name": "Mariela Williams",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11577,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27405,
        "code": "1003",
        "description": "limpieza"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38631,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45386,
      "fecha": "2023-05-12",
      "horaDesde": "08:23:00",
      "horaHasta": "10:56:00",
      "totalHoras": 2.55,
      "operario": {
        "id": 25832,
        "legajo": 3000,
        "name": "Pedro Almodovar",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11578,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38677,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 1,
            "nombre": "incumple horario",
            "descripcion": "El operario incumple el horario establecido en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45387,
      "fecha": "2023-05-12",
      "horaDesde": "10:56:00",
      "horaHasta": "13:00:00",
      "totalHoras": 2.07,
      "operario": {
        "id": 25832,
        "legajo": 3000,
        "name": "Pedro Almodovar",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11578,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38678,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 1,
            "nombre": "incumple horario",
            "descripcion": "El operario incumple el horario establecido en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45388,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "17:26:00",
      "totalHoras": 2.43,
      "operario": {
        "id": 25833,
        "legajo": 4000,
        "name": "Manuel Belgrano",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11579,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21959,
        "code": "2000",
        "description": "Montaje galpón norte",
        "empresa": {
          "id": 21048,
          "name": "Delivery",
          "cuit": "20200200",
          "observations": "",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27406,
            "code": "2004",
            "description": "Limpieza sector montaje"
          },
          {
            "id": 27407,
            "code": "2010",
            "description": "encofrado"
          }
        ]
      },
      "tarea": {
        "id": 27406,
        "code": "2004",
        "description": "Limpieza sector montaje"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38717,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45389,
      "fecha": "2023-05-12",
      "horaDesde": "17:00:00",
      "horaHasta": "19:00:00",
      "totalHoras": 2,
      "operario": {
        "id": 25833,
        "legajo": 4000,
        "name": "Manuel Belgrano",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11579,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21959,
        "code": "2000",
        "description": "Montaje galpón norte",
        "empresa": {
          "id": 21048,
          "name": "Delivery",
          "cuit": "20200200",
          "observations": "",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27406,
            "code": "2004",
            "description": "Limpieza sector montaje"
          },
          {
            "id": 27407,
            "code": "2010",
            "description": "encofrado"
          }
        ]
      },
      "tarea": {
        "id": 27407,
        "code": "2010",
        "description": "encofrado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38718,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45390,
      "fecha": "2023-05-12",
      "horaDesde": "18:00:00",
      "horaHasta": "21:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25833,
        "legajo": 4000,
        "name": "Manuel Belgrano",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11579,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21960,
        "code": "3000",
        "description": "Construcción vereda sur",
        "empresa": {
          "id": 21049,
          "name": "Golfo Nuevo",
          "cuit": "30300300",
          "observations": "Empresa pesquera",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27408,
            "code": "3002",
            "description": "hormigonado"
          }
        ]
      },
      "tarea": {
        "id": 27408,
        "code": "3002",
        "description": "hormigonado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38719,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45391,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "17:26:00",
      "totalHoras": 2.43,
      "operario": {
        "id": 25834,
        "legajo": 5000,
        "name": "Soledad Solari",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11580,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38609,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45392,
      "fecha": "2023-05-12",
      "horaDesde": "18:26:00",
      "horaHasta": "19:00:00",
      "totalHoras": 0.57,
      "operario": {
        "id": 25834,
        "legajo": 5000,
        "name": "Soledad Solari",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11580,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27410,
        "code": "4010",
        "description": "preparación"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38610,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45393,
      "fecha": "2023-05-12",
      "horaDesde": "20:00:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1,
      "operario": {
        "id": 25834,
        "legajo": 5000,
        "name": "Soledad Solari",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11580,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38611,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45394,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "11:00:00",
      "totalHoras": 4,
      "operario": {
        "id": 25835,
        "legajo": 6000,
        "name": "Mariano Moreno",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11581,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38648,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        },
        {
          "id": 38647,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45395,
      "fecha": "2023-05-12",
      "horaDesde": "10:00:00",
      "horaHasta": "14:00:00",
      "totalHoras": 4,
      "operario": {
        "id": 25835,
        "legajo": 6000,
        "name": "Mariano Moreno",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11581,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38649,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        },
		{
          "id": 38650,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45396,
      "fecha": "2023-05-12",
      "horaDesde": "13:00:00",
      "horaHasta": "15:00:00",
      "totalHoras": 2,
      "operario": {
        "id": 25835,
        "legajo": 6000,
        "name": "Mariano Moreno",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11581,
            "fechaDesde": "2023-05-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27405,
        "code": "1003",
        "description": "limpieza"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38651,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        },
		{
          "id": 38652,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45397,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "11:00:00",
      "totalHoras": 4,
      "operario": {
        "id": 25836,
        "legajo": 7000,
        "name": "Eric Anderson",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11582,
            "fechaDesde": "2020-06-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
		{
          "id": 38671,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        },
		{
          "id": 38672,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45398,
      "fecha": "2023-05-12",
      "horaDesde": "10:00:00",
      "horaHasta": "13:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25836,
        "legajo": 7000,
        "name": "Eric Anderson",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11582,
            "fechaDesde": "2020-06-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38674,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        },
        {
          "id": 38673,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45399,
      "fecha": "2023-05-12",
      "horaDesde": "13:00:00",
      "horaHasta": "15:00:00",
      "totalHoras": 2,
      "operario": {
        "id": 25836,
        "legajo": 7000,
        "name": "Eric Anderson",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11582,
            "fechaDesde": "2020-06-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27405,
        "code": "1003",
        "description": "limpieza"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38676,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        },
        {
          "id": 38675,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45400,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "18:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25837,
        "legajo": 8000,
        "name": "Pepe Martinez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11583,
            "fechaDesde": "2020-06-10",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38603,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45401,
      "fecha": "2023-05-12",
      "horaDesde": "18:00:00",
      "horaHasta": "20:00:00",
      "totalHoras": 2,
      "operario": {
        "id": 25837,
        "legajo": 8000,
        "name": "Pepe Martinez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11583,
            "fechaDesde": "2020-06-10",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38604,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45402,
      "fecha": "2023-05-12",
      "horaDesde": "20:00:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1,
      "operario": {
        "id": 25837,
        "legajo": 8000,
        "name": "Pepe Martinez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11583,
            "fechaDesde": "2020-06-10",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27405,
        "code": "1003",
        "description": "limpieza"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38605,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45403,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "17:25:00",
      "totalHoras": 2.42,
      "operario": {
        "id": 25838,
        "legajo": 9000,
        "name": "Santiago Segura",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11584,
            "fechaDesde": "2020-06-11",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38638,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45404,
      "fecha": "2023-05-12",
      "horaDesde": "17:25:00",
      "horaHasta": "19:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25838,
        "legajo": 9000,
        "name": "Santiago Segura",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11584,
            "fechaDesde": "2020-06-11",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38639,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45405,
      "fecha": "2023-05-12",
      "horaDesde": "19:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25838,
        "legajo": 9000,
        "name": "Santiago Segura",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11584,
            "fechaDesde": "2020-06-11",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38640,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45406,
      "fecha": "2022-06-10",
      "horaDesde": "15:00:00",
      "horaHasta": "21:00:00",
      "totalHoras": 6,
      "operario": {
        "id": 25839,
        "legajo": 10000,
        "name": "Ana Gomez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11585,
            "fechaDesde": "2021-01-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21960,
        "code": "3000",
        "description": "Construcción vereda sur",
        "empresa": {
          "id": 21049,
          "name": "Golfo Nuevo",
          "cuit": "30300300",
          "observations": "Empresa pesquera",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27408,
            "code": "3002",
            "description": "hormigonado"
          }
        ]
      },
      "tarea": {
        "id": 27408,
        "code": "3002",
        "description": "hormigonado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38628,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45407,
      "fecha": "2021-02-18",
      "horaDesde": "15:00:00",
      "horaHasta": "18:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25840,
        "legajo": 11000,
        "name": "Juan Perez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11586,
            "fechaDesde": "2021-02-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38617,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45408,
      "fecha": "2021-02-18",
      "horaDesde": "18:00:00",
      "horaHasta": "21:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25840,
        "legajo": 11000,
        "name": "Juan Perez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11586,
            "fechaDesde": "2021-02-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 2,
              "tipo": "Fijo",
              "nombre": "Fijo T 5x2 (15 a 21)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 2,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38618,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45409,
      "fecha": "2018-05-22",
      "horaDesde": "07:00:00",
      "horaHasta": "11:25:00",
      "totalHoras": 4.42,
      "operario": {
        "id": 25841,
        "legajo": 12000,
        "name": "Lucia Fernandez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11587,
            "fechaDesde": "2018-05-22",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38668,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45410,
      "fecha": "2018-05-22",
      "horaDesde": "10:25:00",
      "horaHasta": "14:30:00",
      "totalHoras": 4.08,
      "operario": {
        "id": 25841,
        "legajo": 12000,
        "name": "Lucia Fernandez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11587,
            "fechaDesde": "2018-05-22",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38669,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45411,
      "fecha": "2018-05-22",
      "horaDesde": "14:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25841,
        "legajo": 12000,
        "name": "Lucia Fernandez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11587,
            "fechaDesde": "2018-05-22",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21959,
        "code": "2000",
        "description": "Montaje galpón norte",
        "empresa": {
          "id": 21048,
          "name": "Delivery",
          "cuit": "20200200",
          "observations": "",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27406,
            "code": "2004",
            "description": "Limpieza sector montaje"
          },
          {
            "id": 27407,
            "code": "2010",
            "description": "encofrado"
          }
        ]
      },
      "tarea": {
        "id": 27406,
        "code": "2004",
        "description": "Limpieza sector montaje"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38670,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45412,
      "fecha": "2022-03-22",
      "horaDesde": "15:00:00",
      "horaHasta": "16:00:00",
      "totalHoras": 1,
      "operario": {
        "id": 25842,
        "legajo": 13000,
        "name": "Martin Rodriguez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11588,
            "fechaDesde": "2021-04-25",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21960,
        "code": "3000",
        "description": "Construcción vereda sur",
        "empresa": {
          "id": 21049,
          "name": "Golfo Nuevo",
          "cuit": "30300300",
          "observations": "Empresa pesquera",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27408,
            "code": "3002",
            "description": "hormigonado"
          }
        ]
      },
      "tarea": {
        "id": 27408,
        "code": "3002",
        "description": "hormigonado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38665,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45413,
      "fecha": "2022-03-22",
      "horaDesde": "16:00:00",
      "horaHasta": "20:00:00",
      "totalHoras": 4,
      "operario": {
        "id": 25842,
        "legajo": 13000,
        "name": "Martin Rodriguez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11588,
            "fechaDesde": "2021-04-25",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27410,
        "code": "4010",
        "description": "preparación"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38666,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45414,
      "fecha": "2022-03-22",
      "horaDesde": "20:00:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1,
      "operario": {
        "id": 25842,
        "legajo": 13000,
        "name": "Martin Rodriguez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11588,
            "fechaDesde": "2021-04-25",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27405,
        "code": "1003",
        "description": "limpieza"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38667,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45415,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "12:00:00",
      "totalHoras": 5,
      "operario": {
        "id": 25843,
        "legajo": 14000,
        "name": "Carlos Santos",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11589,
            "fechaDesde": "2021-05-28",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38615,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45416,
      "fecha": "2023-05-12",
      "horaDesde": "12:00:00",
      "horaHasta": "15:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25843,
        "legajo": 14000,
        "name": "Carlos Santos",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11589,
            "fechaDesde": "2021-05-28",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27404,
        "code": "1002",
        "description": "plegadora perfiles"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38616,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45417,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "12:25:00",
      "totalHoras": 5.42,
      "operario": {
        "id": 25844,
        "legajo": 15000,
        "name": "Maria Lopez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11590,
            "fechaDesde": "2021-06-30",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38606,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45418,
      "fecha": "2023-05-12",
      "horaDesde": "12:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 1.08,
      "operario": {
        "id": 25844,
        "legajo": 15000,
        "name": "Maria Lopez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11590,
            "fechaDesde": "2021-06-30",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38607,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45419,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25844,
        "legajo": 15000,
        "name": "Maria Lopez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11590,
            "fechaDesde": "2021-06-30",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 1,
              "tipo": "Fijo",
              "nombre": "Fijo M 5x2 (7 a 15)",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 5,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 1,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38608,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45420,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "18:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25845,
        "legajo": 16000,
        "name": "Alberto Suarez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11591,
            "fechaDesde": "2021-07-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38714,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45421,
      "fecha": "2023-05-12",
      "horaDesde": "18:25:00",
      "horaHasta": "20:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25845,
        "legajo": 16000,
        "name": "Alberto Suarez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11591,
            "fechaDesde": "2021-07-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38715,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45422,
      "fecha": "2023-05-12",
      "horaDesde": "20:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25845,
        "legajo": 16000,
        "name": "Alberto Suarez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11591,
            "fechaDesde": "2021-07-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38716,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45423,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "18:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25846,
        "legajo": 17000,
        "name": "Sofia Jimenez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11592,
            "fechaDesde": "2021-08-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38741,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45424,
      "fecha": "2023-05-12",
      "horaDesde": "18:25:00",
      "horaHasta": "20:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25846,
        "legajo": 17000,
        "name": "Sofia Jimenez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11592,
            "fechaDesde": "2021-08-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38742,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45425,
      "fecha": "2023-05-12",
      "horaDesde": "20:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25846,
        "legajo": 17000,
        "name": "Sofia Jimenez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11592,
            "fechaDesde": "2021-08-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38743,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45426,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "16:25:00",
      "totalHoras": 1.42,
      "operario": {
        "id": 25847,
        "legajo": 18000,
        "name": "Ignacio Sosa",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11593,
            "fechaDesde": "2021-09-09",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38662,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45427,
      "fecha": "2023-05-12",
      "horaDesde": "16:25:00",
      "horaHasta": "18:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25847,
        "legajo": 18000,
        "name": "Ignacio Sosa",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11593,
            "fechaDesde": "2021-09-09",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38663,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45428,
      "fecha": "2023-05-12",
      "horaDesde": "18:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 2.5,
      "operario": {
        "id": 25847,
        "legajo": 18000,
        "name": "Ignacio Sosa",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11593,
            "fechaDesde": "2021-09-09",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38664,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45429,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "18:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25848,
        "legajo": 19000,
        "name": "Teresa Gutierrez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11594,
            "fechaDesde": "2021-10-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38635,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45430,
      "fecha": "2023-05-12",
      "horaDesde": "18:25:00",
      "horaHasta": "19:30:00",
      "totalHoras": 1.08,
      "operario": {
        "id": 25848,
        "legajo": 19000,
        "name": "Teresa Gutierrez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11594,
            "fechaDesde": "2021-10-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38636,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45431,
      "fecha": "2023-05-12",
      "horaDesde": "19:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25848,
        "legajo": 19000,
        "name": "Teresa Gutierrez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11594,
            "fechaDesde": "2021-10-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38637,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45432,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "17:25:00",
      "totalHoras": 2.42,
      "operario": {
        "id": 25849,
        "legajo": 20000,
        "name": "Andres Martinez",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11595,
            "fechaDesde": "2021-11-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38656,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45433,
      "fecha": "2023-05-12",
      "horaDesde": "17:25:00",
      "horaHasta": "19:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25849,
        "legajo": 20000,
        "name": "Andres Martinez",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11595,
            "fechaDesde": "2021-11-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38657,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45434,
      "fecha": "2023-05-12",
      "horaDesde": "19:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25849,
        "legajo": 20000,
        "name": "Andres Martinez",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11595,
            "fechaDesde": "2021-11-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38658,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45435,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "16:25:00",
      "totalHoras": 1.42,
      "operario": {
        "id": 25850,
        "legajo": 21000,
        "name": "Gabriela Vega",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11596,
            "fechaDesde": "2021-12-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38729,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45436,
      "fecha": "2023-05-12",
      "horaDesde": "16:25:00",
      "horaHasta": "19:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25850,
        "legajo": 21000,
        "name": "Gabriela Vega",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11596,
            "fechaDesde": "2021-12-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38730,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45437,
      "fecha": "2023-05-12",
      "horaDesde": "19:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25850,
        "legajo": 21000,
        "name": "Gabriela Vega",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11596,
            "fechaDesde": "2021-12-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38731,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45438,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "18:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25851,
        "legajo": 22000,
        "name": "Pablo Alvarez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11597,
            "fechaDesde": "2022-01-20",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38696,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45439,
      "fecha": "2023-05-12",
      "horaDesde": "18:25:00",
      "horaHasta": "20:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25851,
        "legajo": 22000,
        "name": "Pablo Alvarez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11597,
            "fechaDesde": "2022-01-20",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38697,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45440,
      "fecha": "2023-05-12",
      "horaDesde": "20:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25851,
        "legajo": 22000,
        "name": "Pablo Alvarez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11597,
            "fechaDesde": "2022-01-20",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38698,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45441,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "16:25:00",
      "totalHoras": 1.42,
      "operario": {
        "id": 25852,
        "legajo": 23000,
        "name": "Laura Torres",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11598,
            "fechaDesde": "2022-02-23",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38693,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45442,
      "fecha": "2023-05-12",
      "horaDesde": "16:25:00",
      "horaHasta": "20:30:00",
      "totalHoras": 4.08,
      "operario": {
        "id": 25852,
        "legajo": 23000,
        "name": "Laura Torres",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11598,
            "fechaDesde": "2022-02-23",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38694,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45443,
      "fecha": "2023-05-12",
      "horaDesde": "19:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25852,
        "legajo": 23000,
        "name": "Laura Torres",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11598,
            "fechaDesde": "2022-02-23",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38695,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45444,
      "fecha": "2023-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "18:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25853,
        "legajo": 24000,
        "name": "Damian Romero",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11599,
            "fechaDesde": "2022-03-26",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38625,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45445,
      "fecha": "2023-05-12",
      "horaDesde": "18:25:00",
      "horaHasta": "20:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25853,
        "legajo": 24000,
        "name": "Damian Romero",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11599,
            "fechaDesde": "2022-03-26",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38626,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45446,
      "fecha": "2023-05-12",
      "horaDesde": "20:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25853,
        "legajo": 24000,
        "name": "Damian Romero",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11599,
            "fechaDesde": "2022-03-26",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38627,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45447,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25854,
        "legajo": 25000,
        "name": "Claudia Ruiz",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11600,
            "fechaDesde": "2022-04-29",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38594,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45448,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 4.08,
      "operario": {
        "id": 25854,
        "legajo": 25000,
        "name": "Claudia Ruiz",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11600,
            "fechaDesde": "2022-04-29",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38596,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45449,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25854,
        "legajo": 25000,
        "name": "Claudia Ruiz",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11600,
            "fechaDesde": "2022-04-29",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 3,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 M-T",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 3,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 0
                },
                {
                  "id": 4,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38598,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45450,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25855,
        "legajo": 26000,
        "name": "Francisco Herrera",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11601,
            "fechaDesde": "2022-05-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38699,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45451,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "14:30:00",
      "totalHoras": 4.08,
      "operario": {
        "id": 25855,
        "legajo": 26000,
        "name": "Francisco Herrera",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11601,
            "fechaDesde": "2022-05-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38700,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45452,
      "fecha": "2023-05-12",
      "horaDesde": "14:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25855,
        "legajo": 26000,
        "name": "Francisco Herrera",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11601,
            "fechaDesde": "2022-05-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38701,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45453,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "11:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25856,
        "legajo": 27000,
        "name": "Monica Diaz",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11602,
            "fechaDesde": "2022-06-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38735,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45454,
      "fecha": "2023-05-12",
      "horaDesde": "11:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 4.08,
      "operario": {
        "id": 25856,
        "legajo": 27000,
        "name": "Monica Diaz",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11602,
            "fechaDesde": "2022-06-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38736,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
           "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45455,
      "fecha": "2023-05-12",
      "horaDesde": "14:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25856,
        "legajo": 27000,
        "name": "Monica Diaz",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11602,
            "fechaDesde": "2022-06-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38737,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45456,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "11:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25857,
        "legajo": 28000,
        "name": "Javier Morales",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11603,
            "fechaDesde": "2022-07-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38720,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45457,
      "fecha": "2023-05-12",
      "horaDesde": "11:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25857,
        "legajo": 28000,
        "name": "Javier Morales",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11603,
            "fechaDesde": "2022-07-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38721,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45458,
      "fecha": "2023-05-12",
      "horaDesde": "14:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25857,
        "legajo": 28000,
        "name": "Javier Morales",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11603,
            "fechaDesde": "2022-07-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38722,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45459,
      "fecha": "2023-05-12",
      "horaDesde": "16:00:00",
      "horaHasta": "18:25:00",
      "totalHoras": 2.42,
      "operario": {
        "id": 25858,
        "legajo": 29000,
        "name": "Veronica Blanco",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11604,
            "fechaDesde": "2022-08-09",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38620,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        },
        {
          "id": 38619,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45460,
      "fecha": "2023-05-12",
      "horaDesde": "18:25:00",
      "horaHasta": "19:30:00",
      "totalHoras": 1.08,
      "operario": {
        "id": 25858,
        "legajo": 29000,
        "name": "Veronica Blanco",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11604,
            "fechaDesde": "2022-08-09",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38622,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        },
        {
          "id": 38621,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45461,
      "fecha": "2023-05-12",
      "horaDesde": "18:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 2.5,
      "operario": {
        "id": 25858,
        "legajo": 29000,
        "name": "Veronica Blanco",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11604,
            "fechaDesde": "2022-08-09",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38624,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 2,
            "nombre": "superposición horaria",
            "descripcion": "El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)",
            "tipo": "ERROR"
          }
        },
        {
          "id": 38623,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45462,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25859,
        "legajo": 30000,
        "name": "Ricardo Gonzalez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11605,
            "fechaDesde": "2022-09-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38632,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45463,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25859,
        "legajo": 30000,
        "name": "Ricardo Gonzalez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11605,
            "fechaDesde": "2022-09-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38633,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45464,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25859,
        "legajo": 30000,
        "name": "Ricardo Gonzalez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11605,
            "fechaDesde": "2022-09-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38634,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45465,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:00:00",
      "totalHoras": 3,
      "operario": {
        "id": 25860,
        "legajo": 31000,
        "name": "Susana Ramirez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11606,
            "fechaDesde": "2022-10-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38711,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45466,
      "fecha": "2023-05-12",
      "horaDesde": "10:00:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.5,
      "operario": {
        "id": 25860,
        "legajo": 31000,
        "name": "Susana Ramirez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11606,
            "fechaDesde": "2022-10-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38712,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45467,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25860,
        "legajo": 31000,
        "name": "Susana Ramirez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11606,
            "fechaDesde": "2022-10-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38713,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45468,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "11:25:00",
      "totalHoras": 4.42,
      "operario": {
        "id": 25861,
        "legajo": 32000,
        "name": "Enrique Navarro",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11607,
            "fechaDesde": "2022-11-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38702,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45469,
      "fecha": "2023-05-12",
      "horaDesde": "11:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25861,
        "legajo": 32000,
        "name": "Enrique Navarro",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11607,
            "fechaDesde": "2022-11-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38703,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45470,
      "fecha": "2023-05-12",
      "horaDesde": "14:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 0.5,
      "operario": {
        "id": 25861,
        "legajo": 32000,
        "name": "Enrique Navarro",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11607,
            "fechaDesde": "2022-11-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38704,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 3,
            "nombre": "hueco horario",
            "descripcion": "Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45471,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25862,
        "legajo": 33000,
        "name": "Rosario Martinez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11608,
            "fechaDesde": "2022-12-21",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38600,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45472,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25862,
        "legajo": 33000,
        "name": "Rosario Martinez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11608,
            "fechaDesde": "2022-12-21",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38601,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45473,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25862,
        "legajo": 33000,
        "name": "Rosario Martinez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11608,
            "fechaDesde": "2022-12-21",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38602,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45474,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25863,
        "legajo": 34000,
        "name": "Fernando Mendez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11609,
            "fechaDesde": "2023-01-23",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38685,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45475,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25863,
        "legajo": 34000,
        "name": "Fernando Mendez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11609,
            "fechaDesde": "2023-01-23",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38686,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45476,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25863,
        "legajo": 34000,
        "name": "Fernando Mendez",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11609,
            "fechaDesde": "2023-01-23",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38687,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45477,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25864,
        "legajo": 35000,
        "name": "Patricia Herrera",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11610,
            "fechaDesde": "2023-02-26",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38612,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45478,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25864,
        "legajo": 35000,
        "name": "Patricia Herrera",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11610,
            "fechaDesde": "2023-02-26",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38613,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45479,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25864,
        "legajo": 35000,
        "name": "Patricia Herrera",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11610,
            "fechaDesde": "2023-02-26",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38614,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45480,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25865,
        "legajo": 36000,
        "name": "Guillermo Ortega",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11611,
            "fechaDesde": "2023-03-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38659,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45481,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25865,
        "legajo": 36000,
        "name": "Guillermo Ortega",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11611,
            "fechaDesde": "2023-03-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38660,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45482,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25865,
        "legajo": 36000,
        "name": "Guillermo Ortega",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11611,
            "fechaDesde": "2023-03-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38661,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45483,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25866,
        "legajo": 37000,
        "name": "Isabel Paredes",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11612,
            "fechaDesde": "2023-04-05",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38682,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45484,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25866,
        "legajo": 37000,
        "name": "Isabel Paredes",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11612,
            "fechaDesde": "2023-04-05",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38683,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45485,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25866,
        "legajo": 37000,
        "name": "Isabel Paredes",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11612,
            "fechaDesde": "2023-04-05",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38684,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45486,
      "fecha": "2023-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25867,
        "legajo": 38000,
        "name": "Felipe Villanueva",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11613,
            "fechaDesde": "2023-05-08",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38653,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45487,
      "fecha": "2023-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25867,
        "legajo": 38000,
        "name": "Felipe Villanueva",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11613,
            "fechaDesde": "2023-05-08",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38654,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45488,
      "fecha": "2023-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25867,
        "legajo": 38000,
        "name": "Felipe Villanueva",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11613,
            "fechaDesde": "2023-05-08",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38655,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45489,
      "fecha": "2021-06-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25868,
        "legajo": 39000,
        "name": "Natalia Campos",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11614,
            "fechaDesde": "2019-06-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38726,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45490,
      "fecha": "2021-06-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25868,
        "legajo": 39000,
        "name": "Natalia Campos",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11614,
            "fechaDesde": "2019-06-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38727,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45491,
      "fecha": "2021-06-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25868,
        "legajo": 39000,
        "name": "Natalia Campos",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11614,
            "fechaDesde": "2019-06-12",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38728,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45492,
      "fecha": "2022-08-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25869,
        "legajo": 40000,
        "name": "Alejandro Ruiz",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11615,
            "fechaDesde": "2019-07-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38723,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45493,
      "fecha": "2022-08-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25869,
        "legajo": 40000,
        "name": "Alejandro Ruiz",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11615,
            "fechaDesde": "2019-07-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38724,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45494,
      "fecha": "2022-08-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25869,
        "legajo": 40000,
        "name": "Alejandro Ruiz",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11615,
            "fechaDesde": "2019-07-15",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38725,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45495,
      "fecha": "2021-09-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25870,
        "legajo": 41000,
        "name": "Daniela Aguilar",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11616,
            "fechaDesde": "2019-08-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38705,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45496,
      "fecha": "2021-09-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25870,
        "legajo": 41000,
        "name": "Daniela Aguilar",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11616,
            "fechaDesde": "2019-08-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38706,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45497,
      "fecha": "2021-09-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25870,
        "legajo": 41000,
        "name": "Daniela Aguilar",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11616,
            "fechaDesde": "2019-08-18",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38707,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45498,
      "fecha": "2022-10-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25871,
        "legajo": 42000,
        "name": "Victor Rojas",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11617,
            "fechaDesde": "2019-09-21",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38688,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45499,
      "fecha": "2022-10-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25871,
        "legajo": 42000,
        "name": "Victor Rojas",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11617,
            "fechaDesde": "2019-09-21",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38689,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45500,
      "fecha": "2022-10-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25871,
        "legajo": 42000,
        "name": "Victor Rojas",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11617,
            "fechaDesde": "2019-09-21",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38690,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45501,
      "fecha": "2020-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25872,
        "legajo": 43000,
        "name": "Laura Sánchez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11618,
            "fechaDesde": "2019-10-25",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38738,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45502,
      "fecha": "2020-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25872,
        "legajo": 43000,
        "name": "Laura Sánchez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11618,
            "fechaDesde": "2019-10-25",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38739,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45503,
      "fecha": "2020-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25872,
        "legajo": 43000,
        "name": "Laura Sánchez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11618,
            "fechaDesde": "2019-10-25",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38740,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 4,
            "nombre": "fuera de turno",
            "descripcion": "El operario no cumple el horario en su turno",
            "tipo": "ERROR"
          }
        }
      ]
    },
    {
      "id": 45504,
      "fecha": "2021-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25873,
        "legajo": 44000,
        "name": "Carlos Fernandez",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11619,
            "fechaDesde": "2019-11-28",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38588,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45505,
      "fecha": "2021-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "14:30:00",
      "totalHoras": 4.08,
      "operario": {
        "id": 25873,
        "legajo": 44000,
        "name": "Carlos Fernandez",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11619,
            "fechaDesde": "2019-11-28",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38589,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45506,
      "fecha": "2021-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25873,
        "legajo": 44000,
        "name": "Carlos Fernandez",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11619,
            "fechaDesde": "2019-11-28",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38590,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45507,
      "fecha": "2022-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25874,
        "legajo": 45000,
        "name": "Marta Jimenez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11620,
            "fechaDesde": "2019-12-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38732,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45508,
      "fecha": "2022-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25874,
        "legajo": 45000,
        "name": "Marta Jimenez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11620,
            "fechaDesde": "2019-12-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38733,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45509,
      "fecha": "2022-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25874,
        "legajo": 45000,
        "name": "Marta Jimenez",
        "category": "Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11620,
            "fechaDesde": "2019-12-31",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38734,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45510,
      "fecha": "2022-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25875,
        "legajo": 46000,
        "name": "Antonio González",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11621,
            "fechaDesde": "2019-01-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38641,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45511,
      "fecha": "2022-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25875,
        "legajo": 46000,
        "name": "Antonio González",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11621,
            "fechaDesde": "2019-01-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38642,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45512,
      "fecha": "2022-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25875,
        "legajo": 46000,
        "name": "Antonio González",
        "category": "Oficial_Carpintero",
        "historialTurnos": [
          {
            "id": 11621,
            "fechaDesde": "2019-01-03",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38643,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45513,
      "fecha": "2022-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25876,
        "legajo": 47000,
        "name": "Carmen Martínez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11622,
            "fechaDesde": "2019-02-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38679,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45514,
      "fecha": "2022-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25876,
        "legajo": 47000,
        "name": "Carmen Martínez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11622,
            "fechaDesde": "2019-02-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38680,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45515,
      "fecha": "2022-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25876,
        "legajo": 47000,
        "name": "Carmen Martínez",
        "category": "Medio_Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11622,
            "fechaDesde": "2019-02-06",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38681,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45516,
      "fecha": "2020-05-12",
      "horaDesde": "15:00:00",
      "horaHasta": "16:25:00",
      "totalHoras": 1.42,
      "operario": {
        "id": 25877,
        "legajo": 48000,
        "name": "Luis Rodríguez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11623,
            "fechaDesde": "2019-03-10",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38708,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45517,
      "fecha": "2020-05-12",
      "horaDesde": "16:25:00",
      "horaHasta": "18:30:00",
      "totalHoras": 2.08,
      "operario": {
        "id": 25877,
        "legajo": 48000,
        "name": "Luis Rodríguez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11623,
            "fechaDesde": "2019-03-10",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38709,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45518,
      "fecha": "2020-05-12",
      "horaDesde": "18:30:00",
      "horaHasta": "21:00:00",
      "totalHoras": 2.5,
      "operario": {
        "id": 25877,
        "legajo": 48000,
        "name": "Luis Rodríguez",
        "category": "Oficial_Albañil",
        "historialTurnos": [
          {
            "id": 11623,
            "fechaDesde": "2019-03-10",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38710,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45519,
      "fecha": "2021-05-12",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25878,
        "legajo": 49000,
        "name": "Elena Gómez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11624,
            "fechaDesde": "2019-04-13",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38644,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45520,
      "fecha": "2021-05-12",
      "horaDesde": "10:25:00",
      "horaHasta": "13:30:00",
      "totalHoras": 3.08,
      "operario": {
        "id": 25878,
        "legajo": 49000,
        "name": "Elena Gómez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11624,
            "fechaDesde": "2019-04-13",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38645,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45521,
      "fecha": "2021-05-12",
      "horaDesde": "13:30:00",
      "horaHasta": "15:00:00",
      "totalHoras": 1.5,
      "operario": {
        "id": 25878,
        "legajo": 49000,
        "name": "Elena Gómez",
        "category": "Medio_Oficial_Armador",
        "historialTurnos": [
          {
            "id": 11624,
            "fechaDesde": "2019-04-13",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21958,
        "code": "1000",
        "description": "Escalera lateral fundición",
        "empresa": {
          "id": 21047,
          "name": "Matriz Hierros",
          "cuit": "10100100",
          "observations": "Empresa Metal-mecánica",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27403,
            "code": "1001",
            "description": "corte chapa pantógrafo"
          },
          {
            "id": 27404,
            "code": "1002",
            "description": "plegadora perfiles"
          },
          {
            "id": 27405,
            "code": "1003",
            "description": "limpieza"
          }
        ]
      },
      "tarea": {
        "id": 27403,
        "code": "1001",
        "description": "corte chapa pantógrafo"
      },
      "estado": {
        "id": 3,
        "nombre": "inválido",
        "descripcion": "Parte de Mano de Obra inválido"
      },
      "logValidacionParteMO": [
        {
          "id": 38646,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 10,
            "nombre": "generado",
            "descripcion": "log de validación generado"
          },
          "validacionParteMO": {
            "id": 8,
            "nombre": "esta de franco",
            "descripcion": "Este operario esta de franco",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45522,
      "fecha": "2020-06-06",
      "horaDesde": "07:00:00",
      "horaHasta": "10:25:00",
      "totalHoras": 3.42,
      "operario": {
        "id": 25879,
        "legajo": 50000,
        "name": "Andrés López",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11625,
            "fechaDesde": "2019-05-16",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27409,
        "code": "4004",
        "description": "Limpieza sector granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38691,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    },
    {
      "id": 45523,
      "fecha": "2020-06-06",
      "horaDesde": "10:25:00",
      "horaHasta": "15:00:00",
      "totalHoras": 4.58,
      "operario": {
        "id": 25879,
        "legajo": 50000,
        "name": "Andrés López",
        "category": "Ayudante",
        "historialTurnos": [
          {
            "id": 11625,
            "fechaDesde": "2019-05-16",
            "fechaHasta": null,
            "tipoTurno": {
              "id": 4,
              "tipo": "Rotativo",
              "nombre": "Rotativo 6x2 T-M",
              "fechaArranque": "2018-05-22",
              "cantDiasTrabajo": 6,
              "cantDiasFranco": 2,
              "horarios": [
                {
                  "id": 5,
                  "horaTurnoDesde": "15:00:00",
                  "horaTurnoHasta": "21:00:00",
                  "orden": 0
                },
                {
                  "id": 6,
                  "horaTurnoDesde": "07:00:00",
                  "horaTurnoHasta": "15:00:00",
                  "orden": 1
                }
              ]
            }
          }
        ]
      },
      "proyecto": {
        "id": 21961,
        "code": "4000",
        "description": "Granallado edificio municipal",
        "empresa": {
          "id": 21051,
          "name": "Martín Quintana",
          "cuit": "50500500",
          "observations": "Particular",
          "deletedAt": null
        },
        "tareas": [
          {
            "id": 27409,
            "code": "4004",
            "description": "Limpieza sector granallado"
          },
          {
            "id": 27410,
            "code": "4010",
            "description": "preparación"
          },
          {
            "id": 27411,
            "code": "4002",
            "description": "granallado"
          }
        ]
      },
      "tarea": {
        "id": 27411,
        "code": "4002",
        "description": "granallado"
      },
      "estado": {
        "id": 2,
        "nombre": "válido",
        "descripcion": "Parte de Mano de Obra válido"
      },
      "logValidacionParteMO": [
        {
          "id": 38692,
          "fecha": "2024-06-10",
          "hora": "21:13:21",
          "estado": {
            "id": 11,
            "nombre": "validado",
            "descripcion": "log de validación validado"
          },
          "validacionParteMO": {
            "id": 5,
            "nombre": "validacion exitosa",
            "descripcion": "El operario cumple su turno exitosamente",
            "tipo": "MENSAJE"
          }
        }
      ]
    }
  ]
}
   """
