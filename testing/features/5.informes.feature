# language: es

Característica: resumen partes de Mano de obra
   resumen de la carga de partes de MO por día y operario

   Escenario: ver informe
   Dada los partes cargados
   Cuando se solicitan obtener el resumen de partes por día y operario 
   Entonces se obtiene el siguiente resumen
   """
      {
      "data": [   
         {"legajo": 1000,"nombre": "Hermenegildo Sabat","ingreso":"07:00:00","egreso":"15:00:00","horas":"08:00:00","horasPartes":"08:00:00"},
         {"legajo": 2000,"nombre": "Mariela Williams","ingreso":"07:00:00","egreso":"15:00:00","horas":"08:00:00","horasPartes":"08:00:00"},
         {"legajo": 3000,"nombre": "Pedro Almodovar","ingreso":"08:23:00","egreso":"13:00:00","horas":"04:37:00","horasPartes":"04:37:00"},
         {"legajo": 4000,"nombre": "Manuel Belgrano","ingreso":"15:00:00","egreso":"21:00:00","horas":"06:00:00","horasPartes":"07:26:00"},
         {"legajo": 5000,"nombre": "Soledad Solari","ingreso":"15:00:00","egreso":"21:00:00","horas":"06:00:00","horasPartes":"04:00:00"},
         {"legajo": 6000,"nombre": "Mariano Moreno","ingreso":"07:00:00","egreso":"15:00:00","horas":"08:00:00","horasPartes":"10:00:00"},
         {"legajo": 7000,"nombre": "Eric Anderson","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "09:00:00"},
         {"legajo": 8000,"nombre": "Pepe Martinez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 9000,"nombre": "Santiago Segura","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 14000,"nombre": "Carlos Santos","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 15000,"nombre": "Maria Lopez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 16000,"nombre": "Alberto Suarez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 17000,"nombre": "Sofia Jimenez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 18000,"nombre": "Ignacio Sosa","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 19000,"nombre": "Teresa Gutierrez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 20000,"nombre": "Andres Martinez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 21000,"nombre": "Gabriela Vega","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 22000,"nombre": "Pablo Alvarez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 23000,"nombre": "Laura Torres","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "07:00:00"},
         {"legajo": 24000,"nombre": "Damian Romero","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 25000,"nombre": "Claudia Ruiz","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 26000,"nombre": "Francisco Herrera","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 27000,"nombre": "Monica Diaz","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "07:00:00"},
         {"legajo": 28000,"nombre": "Javier Morales","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "07:00:00"},
         {"legajo": 29000,"nombre": "Veronica Blanco","ingreso": "16:00:00","egreso": "21:00:00","horas": "05:00:00","horasPartes": "06:00:00"},
         {"legajo": 30000,"nombre": "Ricardo Gonzalez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 31000,"nombre": "Susana Ramirez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 32000,"nombre": "Enrique Navarro","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "07:00:00"},
         {"legajo": 33000,"nombre": "Rosario Martinez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 34000,"nombre": "Fernando Mendez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 35000,"nombre": "Patricia Herrera","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 36000,"nombre": "Guillermo Ortega","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 37000,"nombre": "Isabel Paredes","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 38000,"nombre": "Felipe Villanueva","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 42000,"nombre": "Victor Rojas","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 40000,"nombre": "Alejandro Ruiz","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 10000,"nombre": "Ana Gomez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 45000,"nombre": "Marta Jimenez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 46000,"nombre": "Antonio González","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 47000,"nombre": "Carmen Martínez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 13000,"nombre": "Martin Rodriguez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 41000,"nombre": "Daniela Aguilar","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 39000,"nombre": "Natalia Campos","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 44000,"nombre": "Carlos Fernandez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "09:00:00"},
         {"legajo": 49000,"nombre": "Elena Gómez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 11000,"nombre": "Juan Perez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 50000,"nombre": "Andrés López","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 43000,"nombre": "Laura Sánchez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "08:00:00"},
         {"legajo": 48000,"nombre": "Luis Rodríguez","ingreso": "15:00:00","egreso": "21:00:00","horas": "06:00:00","horasPartes": "06:00:00"},
         {"legajo": 12000,"nombre": "Lucia Fernandez","ingreso": "07:00:00","egreso": "15:00:00","horas": "08:00:00","horasPartes": "09:00:00"}


      ]
      }
   """
