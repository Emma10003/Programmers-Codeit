SELECT DISTINCT(id), email, FIRST_NAME, LAST_NAME
FROM developers
         JOIN skillcodes ON developers.skill_code & SKILLCODES.CODE
WHERE NAME ="C#" OR NAME ="Python"
ORDER BY ID