# language: es

Característica: Gestión de operarios

   Esquema del escenario: ingreso de nuevo Operario
      Dado que se ingresa el operario con legajo "<legajo>", con nombre "<nombre>" cuya categoría es "<categoria>" y pertenece al turno "<turno>" a partir de "<fechaTurnoDesde>"
      Cuando presiono el botón de guardar en operarios
      Entonces se espera la siguiente "<respuesta>" de operarios

   Ejemplos:
      | legajo | nombre             | categoria |turno    | fechaTurnoDesde | respuesta    |
      | 1000   | Hermenegildo Sabat | 0         |1        | 2023-05-12      |Operario/a 1000 Hermenegildo Sabat ingresado/a correctamente |
      | 2000   | Mariela Williams   | 1         |1        | 2023-05-12      |Operario/a 2000 Mariela Williams ingresado/a correctamente |
      | 3000   | Pedro Almodovar    | 2         |1        | 2023-05-12      |Operario/a 3000 Pedro Almodovar ingresado/a correctamente |
      | 4000   | Manuel Belgrano    | 3         |2        | 2023-05-12      |Operario/a 4000 Manuel Belgrano ingresado/a correctamente |
      | 5000   | Soledad Solari     | 4         |2        | 2023-05-12      |Operario/a 5000 Soledad Solari ingresado/a correctamente |
      | 6000   | Mariano Moreno     | 5         |2        | 2023-05-12      |Operario/a 6000 Mariano Moreno ingresado/a correctamente |
      | 7000   | Eric Anderson      | 3         |3        | 2020-06-12      |Operario/a 7000 Eric Anderson ingresado/a correctamente |
      | 8000   | Pepe Martinez      | 3         |3        | 2020-06-10      |Operario/a 8000 Pepe Martinez ingresado/a correctamente |
      | 9000   | Santiago Segura    | 5         |3        | 2020-06-11      |Operario/a 9000 Santiago Segura ingresado/a correctamente |
      | 10000  | Ana Gomez          | 1         |3        | 2021-01-15      |Operario/a 10000 Ana Gomez ingresado/a correctamente         |
      | 11000  | Juan Perez         | 2         |2        | 2021-02-18      |Operario/a 11000 Juan Perez ingresado/a correctamente        |
      | 12000  | Lucia Fernandez    | 0         |3        | 2018-05-22      |Operario/a 12000 Lucia Fernandez ingresado/a correctamente   |
      | 13000  | Martin Rodriguez   | 4         |3        | 2021-04-25      |Operario/a 13000 Martin Rodriguez ingresado/a correctamente  |
      | 14000  | Carlos Santos      | 5         |3        | 2021-05-28      |Operario/a 14000 Carlos Santos ingresado/a correctamente     |
      | 15000  | Maria Lopez        | 3         |1        | 2021-06-30      |Operario/a 15000 Maria Lopez ingresado/a correctamente       |
      | 16000  | Alberto Suarez     | 2         |3        | 2021-07-03      |Operario/a 16000 Alberto Suarez ingresado/a correctamente    |
      | 17000  | Sofia Jimenez      | 1         |3        | 2021-08-06      |Operario/a 17000 Sofia Jimenez ingresado/a correctamente     |
      | 18000  | Ignacio Sosa       | 0         |3        | 2021-09-09      |Operario/a 18000 Ignacio Sosa ingresado/a correctamente      |
      | 19000  | Teresa Gutierrez   | 4         |3        | 2021-10-12      |Operario/a 19000 Teresa Gutierrez ingresado/a correctamente  |
      | 20000  | Andres Martinez    | 5         |3        | 2021-11-15      |Operario/a 20000 Andres Martinez ingresado/a correctamente   |
      | 21000  | Gabriela Vega      | 3         |3        | 2021-12-18      |Operario/a 21000 Gabriela Vega ingresado/a correctamente     |
      | 22000  | Pablo Alvarez      | 2         |3        | 2022-01-20      |Operario/a 22000 Pablo Alvarez ingresado/a correctamente     |
      | 23000  | Laura Torres       | 1         |3        | 2022-02-23      |Operario/a 23000 Laura Torres ingresado/a correctamente      |
      | 24000  | Damian Romero      | 0         |3        | 2022-03-26      |Operario/a 24000 Damian Romero ingresado/a correctamente     |
      | 25000  | Claudia Ruiz       | 4         |3        | 2022-04-29      |Operario/a 25000 Claudia Ruiz ingresado/a correctamente      |
      | 26000  | Francisco Herrera  | 5         |4        | 2022-05-31      |Operario/a 26000 Francisco Herrera ingresado/a correctamente |
      | 27000  | Monica Diaz        | 3         |4        | 2022-06-03      |Operario/a 27000 Monica Diaz ingresado/a correctamente       |
      | 28000  | Javier Morales     | 2         |4        | 2022-07-06      |Operario/a 28000 Javier Morales ingresado/a correctamente    |
      | 29000  | Veronica Blanco    | 1         |4        | 2022-08-09      |Operario/a 29000 Veronica Blanco ingresado/a correctamente   |
      | 30000  | Ricardo Gonzalez   | 0         |4        | 2022-09-12      |Operario/a 30000 Ricardo Gonzalez ingresado/a correctamente  |
      | 31000  | Susana Ramirez     | 4         |4        | 2022-10-15      |Operario/a 31000 Susana Ramirez ingresado/a correctamente    |
      | 32000  | Enrique Navarro    | 5         |4        | 2022-11-18      |Operario/a 32000 Enrique Navarro ingresado/a correctamente   |
      | 33000  | Rosario Martinez   | 3         |4        | 2022-12-21      |Operario/a 33000 Rosario Martinez ingresado/a correctamente  |
      | 34000  | Fernando Mendez    | 2         |4        | 2023-01-23      |Operario/a 34000 Fernando Mendez ingresado/a correctamente   |
      | 35000  | Patricia Herrera   | 1         |4        | 2023-02-26      |Operario/a 35000 Patricia Herrera ingresado/a correctamente  |
      | 36000  | Guillermo Ortega   | 0         |4        | 2023-03-31      |Operario/a 36000 Guillermo Ortega ingresado/a correctamente  |
      | 37000  | Isabel Paredes     | 4         |4        | 2023-04-05      |Operario/a 37000 Isabel Paredes ingresado/a correctamente    |
      | 38000  | Felipe Villanueva  | 5         |4        | 2023-05-08      |Operario/a 38000 Felipe Villanueva ingresado/a correctamente |
      | 39000  | Natalia Campos     | 3         |4        | 2019-06-12      |Operario/a 39000 Natalia Campos ingresado/a correctamente    |
      | 40000  | Alejandro Ruiz     | 2         |4        | 2019-07-15      |Operario/a 40000 Alejandro Ruiz ingresado/a correctamente    |
      | 41000  | Daniela Aguilar    | 1         |4        | 2019-08-18      |Operario/a 41000 Daniela Aguilar ingresado/a correctamente   |
      | 42000  | Victor Rojas       | 0         |4        | 2019-09-21      |Operario/a 42000 Victor Rojas ingresado/a correctamente      |
      | 43000  | Laura Sánchez      | 4         |4        | 2019-10-25      |Operario/a 43000 Laura Sánchez ingresado/a correctamente   |
      | 44000  | Carlos Fernandez   | 5         |4        | 2019-11-28      |Operario/a 44000 Carlos Fernandez ingresado/a correctamente|
      | 45000  | Marta Jimenez      | 3         |4        | 2019-12-31      |Operario/a 45000 Marta Jimenez ingresado/a correctamente   |
      | 46000  | Antonio González   | 2         |4        | 2019-01-03      |Operario/a 46000 Antonio González ingresado/a correctamente|
      | 47000  | Carmen Martínez    | 1         |4        | 2019-02-06      |Operario/a 47000 Carmen Martínez ingresado/a correctamente |
      | 48000  | Luis Rodríguez     | 0         |4        | 2019-03-10      |Operario/a 48000 Luis Rodríguez ingresado/a correctamente  |
      | 49000  | Elena Gómez        | 4         |4        | 2019-04-13      |Operario/a 49000 Elena Gómez ingresado/a correctamente     |
      | 50000  | Andrés López       | 5         |4        | 2019-05-16      |Operario/a 50000 Andrés López ingresado/a correctamente    |
      | 51000  | Sofía Pérez        | 3         |4        | 2019-06-19      |Operario/a 51000 Sofía Pérez ingresado/a correctamente     |
      | 52000  | Marcos Hernández   | 2         |4        | 2019-07-22      |Operario/a 52000 Marcos Hernández ingresado/a correctamente|






