/* insert into horario (id,hora_turno_desde,hora_turno_hasta,orden) values (1,'07:00:00','15:00:00',1);
insert into horario (id,hora_turno_desde,hora_turno_hasta,orden) values (2,'15:00:00','21:00:00',2); 

 */

INSERT INTO tipo_turno (id, cant_dias_franco, cant_dias_trabajo, fecha_arranque, nombre, tipo) VALUES(1, 2, 5, '2018-05-21', 'Fijo M 5x2 (7 a 15)', 'Fijo');
INSERT INTO horario (id, hora_turno_desde, hora_turno_hasta, orden) VALUES(1, '07:00:00', '15:00:00', 0); --Fijo mañana
INSERT INTO tipo_turno_horarios (tipo_turno_id, horarios_id) VALUES(1, 1);

INSERT INTO tipo_turno (id, cant_dias_franco, cant_dias_trabajo, fecha_arranque, nombre, tipo) VALUES(2, 2, 5, '2018-05-21', 'Fijo T 5x2 (15 a 21)', 'Fijo');
INSERT INTO horario (id, hora_turno_desde, hora_turno_hasta, orden) VALUES(2, '15:00:00', '21:00:00', 0); --Fijo tarde
INSERT INTO tipo_turno_horarios (tipo_turno_id, horarios_id) VALUES(2, 2);

INSERT INTO tipo_turno (id, cant_dias_franco, cant_dias_trabajo, fecha_arranque,  nombre, tipo) VALUES(3, 2, 6, '2018-05-18', 'Rotativo 6x2 M-T', 'Rotativo');
INSERT INTO horario (id, hora_turno_desde, hora_turno_hasta, orden) VALUES(3, '07:00:00', '15:00:00', 0); --Rotativo 6x2 M-T 
INSERT INTO horario (id, hora_turno_desde, hora_turno_hasta, orden) VALUES(4, '15:00:00', '21:00:00', 1); --Rotativo 6x2 M-T
INSERT INTO tipo_turno_horarios (tipo_turno_id, horarios_id) VALUES(3, 3);
INSERT INTO tipo_turno_horarios (tipo_turno_id, horarios_id) VALUES(3, 4);

INSERT INTO tipo_turno (id, cant_dias_franco, cant_dias_trabajo, fecha_arranque, nombre, tipo) VALUES(4, 2, 6, '2018-05-22', 'Rotativo 6x2 T-M', 'Rotativo');
INSERT INTO horario (id, hora_turno_desde, hora_turno_hasta, orden) VALUES(5, '15:00:00', '21:00:00', 0); --Rotativo 6x2 T-M
INSERT INTO horario (id, hora_turno_desde, hora_turno_hasta, orden) VALUES(6, '07:00:00', '15:00:00', 1); --Rotativo 6x2 T-M 
INSERT INTO tipo_turno_horarios (tipo_turno_id, horarios_id) VALUES(4, 5);
INSERT INTO tipo_turno_horarios (tipo_turno_id, horarios_id) VALUES(4, 6);