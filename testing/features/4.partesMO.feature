# language: es

Característica: Cargar partes de Mano de obra
   Gestionar la carga de partes de MO considerando distintos escenarios y contextos

   Esquema del escenario: 
   Dado el operario con legajo <legajo> y nombre "<nombre>" que trabaja en el turno "<turno>" desde "<fechaTurnoDesde>"
   Y que trabajó el día "<fechaParte>" para el proyecto "<proyecto>" en la tarea "<tarea>" desde las "<horaDesde>" horas hasta las "<horaHasta>" horas
   Cuando se solicitan generar el parte
   Entonces se obtiene <statusCode> con "<statusText>"

   Ejemplos:
   | legajo | nombre             | fechaParte | proyecto | tarea | horaDesde | horaHasta | statusCode | statusText |
   | 1000   | Hermenegildo Sabat | 2023-05-12 | 1000     | 1001  | 07:00     | 10:56     | 200 | Parte MO generado correctamente |
   | 1000   | Hermenegildo Sabat | 2023-05-12 | 1000     | 1002  | 10:56     | 13:00     | 200 | Parte MO generado correctamente |
   | 1000   | Hermenegildo Sabat | 2023-05-12 | 1000     | 1003  | 13:00     | 15:00     | 200 | Parte MO generado correctamente |
   | 2000   | Mariela Williams   | 2023-05-12 | 1000     | 1001  | 07:00     | 10:56     | 200 | Parte MO generado correctamente |
   | 2000   | Mariela Williams   | 2023-05-12 | 1000     | 1002  | 10:56     | 13:00     | 200 | Parte MO generado correctamente|   
   | 2000   | Mariela Williams   | 2023-05-12 | 1000     | 1003  | 13:00     | 15:00     | 200 | Parte MO generado correctamente |   
   | 3000   | Pedro Almodovar    | 2023-05-12 | 1000     | 1001  | 08:23     | 10:56     | 200 | Parte MO generado correctamente |
   | 3000   | Pedro Almodovar    | 2023-05-12 | 1000     | 1002  | 10:56     | 13:00     | 200 | Parte MO generado correctamente |      
   | 4000   | Manuel Belgrano    | 2023-05-12 | 2000     | 2004  | 15:00     | 17:26     | 200 | Parte MO generado correctamente |
   | 4000   | Manuel Belgrano    | 2023-05-12 | 2000     | 2010  | 17:00     | 19:00     | 200 | Parte MO generado correctamente |      
   | 4000   | Manuel Belgrano    | 2023-05-12 | 3000     | 3002  | 18:00     | 21:00     | 200 | Parte MO generado correctamente |      
   | 5000   | Soledad Solari     | 2023-05-12 | 4000     | 4004  | 15:00     | 17:26     | 200 | Parte MO generado correctamente |
   | 5000   | Soledad Solari     | 2023-05-12 | 4000     | 4010  | 18:26     | 19:00     | 200 | Parte MO generado correctamente |      
   | 5000   | Soledad Solari     | 2023-05-12 | 4000     | 4002  | 20:00     | 21:00     | 200 | Parte MO generado correctamente|      
   | 6000   | Mariano Moreno     | 2023-05-12 | 1000     | 1001  | 07:00     | 11:00     | 200 | Parte MO generado correctamente |
   | 6000   | Mariano Moreno     | 2023-05-12 | 1000     | 1002  | 10:00     | 14:00     | 200 | Parte MO generado correctamente |      
   | 6000   | Mariano Moreno     | 2023-05-12 | 1000     | 1003  | 13:00     | 15:00     | 200 | Parte MO generado correctamente |      
   | 7000   | Eric Anderson      | 2023-05-12 | 1000     | 1001  | 07:00     | 11:00     | 200 | Parte MO generado correctamente |
   | 7000   | Eric Anderson      | 2023-05-12 | 1000     | 1002  | 10:00     | 13:00     | 200 | Parte MO generado correctamente |      
   | 7000   | Eric Anderson      | 2023-05-12 | 1000     | 1003  | 13:00     | 15:00     | 200 | Parte MO generado correctamente |      
   | 8000   | Pepe Martinez      | 2023-05-12 | 1000     | 1001  | 15:00     | 18:00     | 200 | Parte MO generado correctamente |
   | 8000   | Pepe Martinez      | 2023-05-12 | 1000     | 1002  | 18:00     | 20:00     | 200 | Parte MO generado correctamente |
   | 8000   | Pepe Martinez      | 2023-05-12 | 1000     | 1003  | 20:00     | 21:00     | 200 | Parte MO generado correctamente |
   | 9000   | Santiago Segura    | 2023-05-12 | 4000     | 4004  | 15:00     | 17:25     | 200 | Parte MO generado correctamente |
   | 9000   | Santiago Segura    | 2023-05-12 | 4000     | 4002  | 17:25     | 19:30     | 200 | Parte MO generado correctamente |
   | 9000   | Santiago Segura    | 2023-05-12 | 1000     | 1001  | 19:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 10000  | Ana Gomez          | 2022-06-10 | 3000     | 3002  | 15:00     | 21:00     | 200 | Parte MO generado correctamente |
   | 11000  | Juan Perez         | 2021-02-18 | 1000     | 1001  | 15:00     | 18:00     | 200 | Parte MO generado correctamente |
   | 11000  | Juan Perez         | 2021-02-18 | 4000     | 4002  | 18:00     | 21:00     | 200 | Parte MO generado correctamente |
   | 12000  | Lucia Fernandez    | 2018-05-22 | 1000     | 1001  | 07:00     | 11:25     | 200 | Parte MO generado correctamente |
   | 12000  | Lucia Fernandez    | 2018-05-22 | 1000     | 1002  | 10:25     | 14:30     | 200 | Parte MO generado correctamente |
   | 12000  | Lucia Fernandez    | 2018-05-22 | 2000     | 2004  | 14:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 13000  | Martin Rodriguez   | 2022-03-22 | 3000     | 3002  | 15:00     | 16:00     | 200 | Parte MO generado correctamente |
   | 13000  | Martin Rodriguez   | 2022-03-22 | 4000     | 4010  | 16:00     | 20:00     | 200 | Parte MO generado correctamente |
   | 13000  | Martin Rodriguez   | 2022-03-22 | 1000     | 1003  | 20:00     | 21:00     | 200 | Parte MO generado correctamente |
   | 14000  | Carlos Santos      | 2023-05-12 | 1000     | 1002  | 07:00     | 12:00     | 200 | Parte MO generado correctamente |
   | 14000  | Carlos Santos      | 2023-05-12 | 1000     | 1002  | 12:00     | 15:00     | 200 | Parte MO generado correctamente |
   | 15000  | Maria Lopez        | 2023-05-12 | 4000     | 4004  | 07:00     | 12:25     | 200 | Parte MO generado correctamente |
   | 15000  | Maria Lopez        | 2023-05-12 | 4000     | 4002  | 12:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 15000  | Maria Lopez        | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 16000  | Alberto Suarez     | 2023-05-12 | 4000     | 4004  | 15:00     | 18:25     | 200 | Parte MO generado correctamente |
   | 16000  | Alberto Suarez     | 2023-05-12 | 4000     | 4002  | 18:25     | 20:30     | 200 | Parte MO generado correctamente |
   | 16000  | Alberto Suarez     | 2023-05-12 | 1000     | 1001  | 20:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 17000  | Sofia Jimenez      | 2023-05-12 | 4000     | 4004  | 15:00     | 18:25     | 200 | Parte MO generado correctamente |
   | 17000  | Sofia Jimenez      | 2023-05-12 | 4000     | 4002  | 18:25     | 20:30     | 200 | Parte MO generado correctamente |
   | 17000  | Sofia Jimenez      | 2023-05-12 | 1000     | 1001  | 20:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 18000  | Ignacio Sosa       | 2023-05-12 | 4000     | 4004  | 15:00     | 16:25     | 200 | Parte MO generado correctamente |
   | 18000  | Ignacio Sosa       | 2023-05-12 | 4000     | 4002  | 16:25     | 18:30     | 200 | Parte MO generado correctamente |
   | 18000  | Ignacio Sosa       | 2023-05-12 | 1000     | 1001  | 18:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 19000  | Teresa Gutierrez   | 2023-05-12 | 4000     | 4004  | 15:00     | 18:25     | 200 | Parte MO generado correctamente |
   | 19000  | Teresa Gutierrez   | 2023-05-12 | 4000     | 4002  | 18:25     | 19:30     | 200 | Parte MO generado correctamente |
   | 19000  | Teresa Gutierrez   | 2023-05-12 | 1000     | 1001  | 19:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 20000  | Andres Martinez    | 2023-05-12 | 4000     | 4004  | 15:00     | 17:25     | 200 | Parte MO generado correctamente |
   | 20000  | Andres Martinez    | 2023-05-12 | 4000     | 4002  | 17:25     | 19:30     | 200 | Parte MO generado correctamente |
   | 20000  | Andres Martinez    | 2023-05-12 | 1000     | 1001  | 19:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 21000  | Gabriela Vega      | 2023-05-12 | 4000     | 4004  | 15:00     | 16:25     | 200 | Parte MO generado correctamente |
   | 21000  | Gabriela Vega      | 2023-05-12 | 4000     | 4002  | 16:25     | 19:30     | 200 | Parte MO generado correctamente |
   | 21000  | Gabriela Vega      | 2023-05-12 | 1000     | 1001  | 19:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 22000  | Pablo Alvarez      | 2023-05-12 | 4000     | 4004  | 15:00     | 18:25     | 200 | Parte MO generado correctamente |
   | 22000  | Pablo Alvarez      | 2023-05-12 | 4000     | 4002  | 18:25     | 20:30     | 200 | Parte MO generado correctamente |
   | 22000  | Pablo Alvarez      | 2023-05-12 | 1000     | 1001  | 20:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 23000  | Laura Torres       | 2023-05-12 | 4000     | 4004  | 15:00     | 16:25     | 200 | Parte MO generado correctamente |
   | 23000  | Laura Torres       | 2023-05-12 | 4000     | 4002  | 16:25     | 20:30     | 200 | Parte MO generado correctamente |
   | 23000  | Laura Torres       | 2023-05-12 | 1000     | 1001  | 19:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 24000  | Damian Romero      | 2023-05-12 | 4000     | 4004  | 15:00     | 18:25     | 200 | Parte MO generado correctamente |
   | 24000  | Damian Romero      | 2023-05-12 | 4000     | 4002  | 18:25     | 20:30     | 200 | Parte MO generado correctamente |
   | 24000  | Damian Romero      | 2023-05-12 | 1000     | 1001  | 20:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 25000  | Claudia Ruiz       | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 25000  | Claudia Ruiz       | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 25000  | Claudia Ruiz       | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 26000  | Francisco Herrera  | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 26000  | Francisco Herrera  | 2023-05-12 | 4000     | 4002  | 10:25     | 14:30     | 200 | Parte MO generado correctamente |
   | 26000  | Francisco Herrera  | 2023-05-12 | 1000     | 1001  | 14:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 27000  | Monica Diaz        | 2023-05-12 | 4000     | 4004  | 07:00     | 11:25     | 200 | Parte MO generado correctamente |
   | 27000  | Monica Diaz        | 2023-05-12 | 4000     | 4002  | 11:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 27000  | Monica Diaz        | 2023-05-12 | 1000     | 1001  | 14:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 28000  | Javier Morales     | 2023-05-12 | 4000     | 4004  | 07:00     | 11:25     | 200 | Parte MO generado correctamente |
   | 28000  | Javier Morales     | 2023-05-12 | 4000     | 4002  | 11:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 28000  | Javier Morales     | 2023-05-12 | 1000     | 1001  | 14:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 29000  | Veronica Blanco    | 2023-05-12 | 4000     | 4004  | 16:00     | 18:25     | 200 | Parte MO generado correctamente |
   | 29000  | Veronica Blanco    | 2023-05-12 | 4000     | 4002  | 18:25     | 19:30     | 200 | Parte MO generado correctamente |
   | 29000  | Veronica Blanco    | 2023-05-12 | 1000     | 1001  | 18:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 30000  | Ricardo Gonzalez   | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 30000  | Ricardo Gonzalez   | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 30000  | Ricardo Gonzalez   | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 31000  | Susana Ramirez     | 2023-05-12 | 4000     | 4004  | 07:00     | 10:00     | 200 | Parte MO generado correctamente |
   | 31000  | Susana Ramirez     | 2023-05-12 | 4000     | 4002  | 10:00     | 13:30     | 200 | Parte MO generado correctamente |
   | 31000  | Susana Ramirez     | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 32000  | Enrique Navarro    | 2023-05-12 | 4000     | 4004  | 07:00     | 11:25     | 200 | Parte MO generado correctamente |
   | 32000  | Enrique Navarro    | 2023-05-12 | 4000     | 4002  | 11:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 32000  | Enrique Navarro    | 2023-05-12 | 1000     | 1001  | 14:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 33000  | Rosario Martinez   | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 33000  | Rosario Martinez   | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 33000  | Rosario Martinez   | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 34000  | Fernando Mendez    | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 34000  | Fernando Mendez    | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 34000  | Fernando Mendez    | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 35000  | Patricia Herrera   | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 35000  | Patricia Herrera   | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 35000  | Patricia Herrera   | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 36000  | Guillermo Ortega   | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 36000  | Guillermo Ortega   | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 36000  | Guillermo Ortega   | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 37000  | Isabel Paredes     | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 37000  | Isabel Paredes     | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 37000  | Isabel Paredes     | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 38000  | Felipe Villanueva  | 2023-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 38000  | Felipe Villanueva  | 2023-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 38000  | Felipe Villanueva  | 2023-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 39000  | Natalia Campos     | 2021-06-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 39000  | Natalia Campos     | 2021-06-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 39000  | Natalia Campos     | 2021-06-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 40000  | Alejandro Ruiz     | 2022-08-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 40000  | Alejandro Ruiz     | 2022-08-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 40000  | Alejandro Ruiz     | 2022-08-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 41000  | Daniela Aguilar    | 2021-09-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 41000  | Daniela Aguilar    | 2021-09-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 41000  | Daniela Aguilar    | 2021-09-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 42000  | Victor Rojas       | 2022-10-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 42000  | Victor Rojas       | 2022-10-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 42000  | Victor Rojas       | 2022-10-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 43000  | Laura Sánchez      | 2020-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 43000  | Laura Sánchez      | 2020-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 43000  | Laura Sánchez      | 2020-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 44000  | Carlos Fernandez   | 2021-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 44000  | Carlos Fernandez   | 2021-05-12 | 4000     | 4002  | 10:25     | 14:30     | 200 | Parte MO generado correctamente |
   | 44000  | Carlos Fernandez   | 2021-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 45000  | Marta Jimenez      | 2022-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 45000  | Marta Jimenez      | 2022-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 45000  | Marta Jimenez      | 2022-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 46000  | Antonio González   | 2022-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 46000  | Antonio González   | 2022-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 46000  | Antonio González   | 2022-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 47000  | Carmen Martínez    | 2022-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 47000  | Carmen Martínez    | 2022-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 47000  | Carmen Martínez    | 2022-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 48000  | Luis Rodríguez     | 2020-05-12 | 4000     | 4004  | 15:00     | 16:25     | 200 | Parte MO generado correctamente |
   | 48000  | Luis Rodríguez     | 2020-05-12 | 4000     | 4002  | 16:25     | 18:30     | 200 | Parte MO generado correctamente |
   | 48000  | Luis Rodríguez     | 2020-05-12 | 1000     | 1001  | 18:30     | 21:00     | 200 | Parte MO generado correctamente |
   | 49000  | Elena Gómez        | 2021-05-12 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 49000  | Elena Gómez        | 2021-05-12 | 4000     | 4002  | 10:25     | 13:30     | 200 | Parte MO generado correctamente |
   | 49000  | Elena Gómez        | 2021-05-12 | 1000     | 1001  | 13:30     | 15:00     | 200 | Parte MO generado correctamente |
   | 50000  | Andrés López       | 2020-06-06 | 4000     | 4004  | 07:00     | 10:25     | 200 | Parte MO generado correctamente |
   | 50000  | Andrés López       | 2020-06-06 | 4000     | 4002  | 10:25     | 15:00     | 200 | Parte MO generado correctamente |
