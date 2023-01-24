-- 코드를 입력하세요
SELECT animal_id, name, if(SEX_UPON_INTAKE LIKE '%NEUTERED%' OR SEX_UPON_INTAKE LIKE '%SPAYED%','O','X') AS '중성화'
from animal_ins
order by animal_id