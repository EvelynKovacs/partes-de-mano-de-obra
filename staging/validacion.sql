insert into validacion_partemo (id,tipo,nombre,descripcion) values (1,2,'incumple horario','El operario incumple el horario establecido en su turno');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (2,2,'superposición horaria','El operario superpone horas entre tareas del mismo día (+horas que entrada-salida)');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (3,2,'hueco horario','Existen huecos horarios entre tareas del mismo día (-horas que entrada-salida)');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (4,2,'fuera de turno','El operario no cumple el horario en su turno');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (5,0,'validacion exitosa','El operario cumple su turno exitosamente');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (6,0,'validacion realizada por supervisor','Esta parte fue validado por el supervisor');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (7,0,'parte rechazado','Este parte fue rechazado por supervisor');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (8,0,'esta de franco','Este operario esta de franco');
insert into validacion_partemo (id,tipo,nombre,descripcion) values (9,0,'turno inexistente','Este operario en esta fecha no tiene turno asigado');