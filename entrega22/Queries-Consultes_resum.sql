SELECT COUNT(*) FROM (SELECT * FROM persona WHERE persona.tipo = 'Profesor') as art
SELECT COUNT(*) FROM (SELECT * FROM persona WHERE persona.tipo = 'alumno' AND persona.fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31') as art
SELECT per.nombre, dep.nombre FROM (persona per LEFT JOIN profesor prof ON per.id = prof.id_profesor RIGHT JOIN departamento dep ON dep.id = prof.id_departamento )
SELECT dep.nombre, COUNT(prof.id_departamento) as profesores FROM departamento dep LEFT JOIN profesor prof ON prof.id_departamento = dep.id GROUP BY dep.id
SELECT g.nombre, COUNT(asi.id) as asignaturas FROM grado g RIGHT JOIN asignatura asi ON g.id = asi.id_grado GROUP BY g.nombre;
SELECT grado.nombre, COUNT(asignatura.id) as total_asignaturas FROM grado JOIN asignatura ON grado.id = asignatura.id_grado GROUP BY grado.nombre HAVING total_asignaturas > 40
SELECT grado.nombre, asignatura.tipo, COUNT(asignatura.creditos) as creditos FROM grado JOIN asignatura ON grado.id = asignatura.id_grado GROUP BY asignatura.id_grado, asignatura.tipo
SELECT ce.anyo_inicio,  COUNT(*) as alumnos FROM curso_escolar ce JOIN alumno_se_matricula_asignatura asm ON ce.id = asm.id_curso_escolar GROUP BY asm.id_curso_escolar
SELECT per.id, per.nombre, per.apellido1, per.apellido2, COUNT(asi.id_profesor) as asignaturas FROM persona per  RIGHT JOIN profesor prof ON prof.id_profesor = per.id LEFT JOIN asignatura asi ON asi.id_profesor = prof.id_profesor GROUP BY prof.id_profesor ORDER BY COUNT(asi.id_profesor) DESC 
SELECT persona.id FROM persona WHERE tipo = "alumno" ORDER BY fecha_nacimiento ASC LIMIT 1
SELECT prof.id_profesor, dep.nombre as dep_nombre, asi.nombre as asig_nombre FROM profesor prof JOIN departamento dep ON prof.id_departamento = dep.id LEFT JOIN asignatura asi ON prof.id_profesor = asi.id_profesor WHERE asi.id_profesor IS NULL