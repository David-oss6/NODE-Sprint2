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
SELECT  dep.nombre AS dep FROM departamento dep
UNION
SELECT COUNT(*) as trabajadores FROM (SELECT * FROM profesor JOIN departamento ON profesor.id_departamento = departamento.id) AS t1
Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d aparèixer en el llistat. El resultat haurà d estar ordenat de major a menor pel nombre d assignatures.
SELECT g.nombre, COUNT(asi.id) as asignaturas
FROM grado g
RIGHT JOIN asignatura asi ON g.id = asi.id_grado
GROUP BY g.nombre;
Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d''assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.
Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d''assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d''assignatura i la suma dels crèdits de totes les assignatures que hi ha d''aquest tipus.
Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.
Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.
Retorna totes les dades de l'alumne/a més jove.
Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.