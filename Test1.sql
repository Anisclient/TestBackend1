SELECT d.full_name FULL_NAME,
       d.spec SPEC,
       SUM(t.summ) TOTAL
  FROM doctors d
       JOIN transactions t
         ON t.doc_id = d.id
         AND year(t.date) = 2019
 GROUP BY d.id
HAVING SUM(t.summ) > 2500;
