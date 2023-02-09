Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.
SELECT  CONCAT_WS(' ',  apellido1, apellido2, nombre) as alumnos FROM persona p JOIN alumno_se_matricula_asignatura asm ON p.id = asm.id_alumno GROUP BY p.id ORDER BY apellido1 DESC, apellido2 DESC, nombre DESC
Esbrina el nom i els dos cognoms dels alumnes que no han donat d alta el seu número de telèfon en la base de dades.
SELECT  CONCAT_WS(' ',  apellido1, apellido2, nombre) as alumnos FROM persona p JOIN alumno_se_matricula_asignatura asm ON (p.id = asm.id_alumno) AND p.telefono IS NULL GROUP BY p.id 
Retorna el llistat dels alumnes que van néixer en 1999.
SELECT  CONCAT_WS(' ',  apellido1, apellido2, nombre) as alumnos FROM persona p JOIN alumno_se_matricula_asignatura asm ON (p.id = asm.id_alumno) AND (p.fecha_nacimiento BETWEEN '1998-12-30' AND '1999-12-30') GROUP BY p.id 
Retorna el llistat de professors/es que no han donat d alta el seu número de telèfon en la base de dades i a més el seu NIF acaba en K.
SELECT * FROM profesor prof JOIN persona per ON (prof.id_profesor = per.id) AND (per.nif LIKE '%k')
Retorna el llistat de les assignatures que s imparteixen en el primer quadrimestre, en el tercer curs del grau que té l identificador 7.
SELECT * FROM asignatura  JOIN grado ON grado.id = asignatura.id_grado AND cuatrimestre = 1 AND curso =3 
Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.
SELECT p.apellido1, p.apellido2, p.nombre, departamento.nombre FROM persona p JOIN profesor ON profesor.id_profesor = p.id RIGHT JOIN departamento ON profesor.id_departamento = departamento.id ORDER BY p.apellido1 DESC, p.apellido2 DESC, p.nombre DESC
Retorna un llistat amb el nom de les assignatures, any d inici i any de fi del curs escolar de l alumne/a amb NIF 26902806M.
SELECT asi.nombre, ce.anyo_inicio, ce.anyo_fin FROM asignatura asi
JOIN alumno_se_matricula_asignatura asm ON asm.id_asignatura = asi.id
JOIN curso_escolar ce ON ce.id = asi.curso 
JOIN persona per ON per.nif REGEXP '26902806M'
Retorna un llistat amb el nom de tots els departaments que tenen professors/es que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).
SELECT dep.nombre FROM departamento dep
JOIN profesor ON profesor.id_departamento = dep.id
JOIN asignatura ON asignatura.id_grado = 4
GROUP BY dep.nombre
Retorna un llistat amb tots els alumnes que s han matriculat en alguna assignatura durant el curs escolar 2018/2019.
SELECT nombre FROM persona
JOIN alumno_se_matricula_asignatura asm On asm.id_alumno = persona.id
JOIN curso_escolar ce ON ce.id = asm.id_curso_escolar
WHERE ce.anyo_inicio BETWEEN '2018-01-01' AND '2019-12-31'
GROUP BY persona.id