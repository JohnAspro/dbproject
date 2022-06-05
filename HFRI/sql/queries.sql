-- 3.1
SELECT program_name from program;

SELECT executive_name FROM executive;

SELECT DISTINCT YEAR(start_date) y FROM project ORDER BY y DESC;

SELECT p.title from project p
INNER JOIN executive e
ON (e.executive_id = p.executive_id)
WHERE YEAR(p.end_date) - YEAR(p.start_date) = 4
AND e.executive_name = 'Panagiotis Condakos' AND
YEAR(p.start_date)='2022';

SELECT r.first_name, r.last_name , p.title  from project p
INNER JOIN executive e ON (e.executive_id = p.executive_id)
INNER JOIN works_on wo  ON wo.project_id = p.project_id
INNER JOIN researcher r  ON r.researcher_id = wo.researcher_id
WHERE e.executive_name='Panagiotis Condakos' AND YEAR(p.end_date) - YEAR(p.start_date) = 4
AND YEAR(p.start_date)='2022';

-- 3.2
select * from pr_re;

select * from p_per_org;

-- 3.3
SELECT p.title, r.last_name from focuses_on fo
INNER JOIN project p
ON (p.project_id = fo.project_id)
INNER JOIN works_on wo
ON (wo.project_id = p.project_id)
INNER JOIN researcher r
ON (r.researcher_id = wo.researcher_id)
WHERE p.end_date - CURDATE() > 0 and fo.scientific_field_name = 'Computer Science';

-- 3.4
CREATE VIEW y_o AS
(SELECT YEAR(p.start_date) xronos, count(*) , o.organization_name from project p
INNER JOIN org o
ON (o.organization_id = p.organization_id)
GROUP BY o.organization_name, xronos
HAVING count(*) > 10);

SELECT yo.organization_name from y_o yo
INNER JOIN y_o yo2
ON (yo.organization_name = yo2.organization_name and ABS(yo.xronos - yo2.xronos) = 1
and yo.xronos > yo2.xronos);

-- 3.5
CREATE VIEW p_sf AS
(SELECT p.project_id, fo.scientific_field_name from project p
INNER JOIN focuses_on fo
ON (fo.project_id = p.project_id)
GROUP BY p.project_id, fo.scientific_field_name
ORDER BY p.project_id DESC);

SELECT count(psf.project_id) num , psf.scientific_field_name, psf2.scientific_field_name from p_sf psf
INNER JOIN p_sf psf2
ON psf.project_id = psf2.project_id
WHERE psf.scientific_field_name > psf2.scientific_field_name
GROUP BY psf.scientific_field_name, psf2.scientific_field_name
order by num desc
LIMIT 3;

-- 3.6
SELECT a.first_name, a.last_name, COUNT(b.project_id) FROM researcher a
INNER JOIN works_on b ON (a.researcher_id = b.researcher_id)
INNER JOIN project c ON (c.project_id = b.project_id) WHERE c.end_date > CURDATE() AND DATEDIFF(CURDATE(),a.date_of_birth) /365 < 40
GROUP BY a.researcher_id ORDER BY COUNT(b.project_id) DESC;

-- 3.7
SELECT ex.executive_name, o.organization_name, SUM(p.funds) money from executive ex
INNER join project p
ON (ex.executive_id = p.executive_id)
INNER JOIN org o
ON o.organization_id = p.organization_id
GROUP BY ex.executive_name, o.organization_name
ORDER BY money DESC
LIMIT 5;

-- 3.8

SELECT r.first_name, r.last_name, count(*) num_of_proj from researcher r
INNER JOIN works_on wo
ON wo.researcher_id = r.researcher_id
where wo.project_id IN
(select p.project_id from project p
WHERE p.project_id NOT IN (select d.project_id from deliverable d))
GROUP BY r.last_name, r.first_name
HAVING num_of_proj > 4;
