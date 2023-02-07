Resol les 6 següents consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN.

Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.
Retorna un llistat amb els professors/es que no estan associats a un departament.
SELECT * FROM profesor p JOIN departamento ON p.id_profesor NOT IN (SELECT departamento.id FROM departamento)
Retorna un llistat amb els departaments que no tenen professors/es associats.
SELECT id from departamento dep JOIN profesor ON dep.id NOT IN (SELECT profesor.id_departamento FROM profesor)
Retorna un llistat amb els professors/es que no imparteixen cap assignatura.
SELECT * FROM profesor JOIN asignatura ON profesor.id_profesor NOT IN (SELECT asignatura.id_profesor FROM asignatura)
Retorna un llistat amb les assignatures que no tenen un professor/a assignat.
SELECT * FROM asignatura JOIN profesor ON asignatura.id NOT IN (SELECT id_profesor FROM profesor)
Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.
SELECT * from departamento JOIN asignatura ON asignatura.id NOT IN (SELECT id FROM curso_escolar)