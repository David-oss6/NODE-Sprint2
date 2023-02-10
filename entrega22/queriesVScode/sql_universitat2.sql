-- *************************************************   FET  HECHO    DONE ******************************************
Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
SELECT  dep.nombre, per.nombre, per.apellido1, per.apellido2 FROM persona per RIGHT JOIN profesor prof ON per.id = prof.id_profesor RIGHT JOIN departamento dep ON prof.id_departamento = ep.id
ORDER BY dep.nombre ASC, per.apellido1 ASC, per.apellido2 ASC, per.nombre ASC
Retorna un llistat amb els professors/es que no estan associats a un departament.
SELECT id_profesor, departamento.nombre FROM profesor p 
LEFT JOIN departamento ON p.id_profesor = departamento.id
WHERE departamento.id IS NULL

Retorna un llistat amb els departaments que no tenen professors/es associats.
SELECT dep.id AS departamento_id FROM departamento dep LEFT JOIN profesor ON profesor.id_departamento = dep.id WHERE profesor.id_departamento IS NULL

Retorna un llistat amb els professors/es que no imparteixen cap assignatura.
SELECT profesor.id_profesor FROM profesor LEFT JOIN asignatura ON profesor.id_profesor = asignatura.id_profesor WHERE asignatura.id_profesor IS NULL

Retorna un llistat amb les assignatures que no tenen un professor/a assignat.
SELECT asignatura.nombre FROM asignatura LEFT JOIN profesor ON asignatura.id_profesor = profesor.id_profesor WHERE asignatura.id_profesor IS NULL

Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
