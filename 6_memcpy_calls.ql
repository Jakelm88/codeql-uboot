import cpp

from FunctionCall c , Function f
where c.getTarget()=f and f.getName()="memcpy"
select c
