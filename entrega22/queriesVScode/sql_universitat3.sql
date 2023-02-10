Consultes resum:

Retorna el nombre total d'alumnes que hi ha'.
SELECT COUNT(*) FROM (SELECT * FROM persona WHERE persona.tipo = 'Profesor') as art
Calcula quants alumnes van néixer en 1999.
SELECT COUNT(*) FROM (SELECT * FROM persona WHERE persona.tipo = 'alumno' AND persona.fecha_nacimiento BETWEEN '1999-01-01' AND '1999-12-31') as art
Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d incloure els departaments que tenen professors/es associats i haurà d estar ordenat de major a menor pel nombre de professors/es.
SELECT per.nombre, dep.nombre FROM (persona per
LEFT JOIN profesor prof ON per.id = prof.id_profesor 
RIGHT JOIN departamento dep ON dep.id = prof.id_departamento 
)
Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d aparèixer en el llistat.
SELECT dep.nombre, COUNT(prof.id_departamento) as profesores FROM departamento dep
JOIN profesor prof ON prof.id_departamento = dep.id
GROUP BY dep.id
Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d aparèixer en el llistat. El resultat haurà d estar ordenat de major a menor pel nombre d assignatures.
SELECT g.nombre, COUNT(asi.id) as asignaturas
FROM grado g
RIGHT JOIN asignatura asi ON g.id = asi.id_grado
GROUP BY g.nombre;
Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d''assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
SELECT grado.nombre, COUNT(asignatura.id) as total_asignaturas FROM grado JOIN asignatura ON grado.id = asignatura.id_grado GROUP BY grado.nombre
HAVING total_asignaturas > 40
Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d''assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d''assignatura i la suma dels crèdits de totes les assignatures que hi ha d''aquest tipus.
SELECT grado.nombre, asignatura.tipo, COUNT(asignatura.creditos) as creditos FROM grado JOIN asignatura ON grado.id = asignatura.id_grado GROUP BY asignatura.id_grado, asignatura.tipo
Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d''alumnes matriculats.
SELECT ce.anyo_inicio,  COUNT(*) as alumnos 
FROM curso_escolar ce
JOIN alumno_se_matricula_asignatura asm ON ce.id = asm.id_curso_escolar
GROUP BY asm.id_curso_escolar
Retorna un llistat amb el nombre d''assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
SELECT per.id, per.nombre, per.apellido1, per.apellido2, COUNT(asi.id_profesor) as asignaturas
FROM persona per
RIGHT JOIN profesor prof ON prof.id_profesor = per.id
LEFT JOIN asignatura asi ON asi.id_profesor = prof.id_profesor
GROUP BY prof.id_profesor
ORDER BY COUNT(asi.id_profesor) DESC
Retorna totes les dades de l''alumne/a més jove.
SELECT persona.id FROM persona WHERE tipo = "alumno" ORDER BY fecha_nacimiento ASC LIMIT 1
Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.
SELECT prof.id_profesor, dep.nombre as dep_nombre, asi.nombre as asig_nombre FROM profesor prof
JOIN departamento dep ON prof.id_departamento = dep.id
LEFT JOIN asignatura asi ON prof.id_profesor = asi.id_profesor
WHERE asi.id_profesor IS NULL