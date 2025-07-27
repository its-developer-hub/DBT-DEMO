{% macro odd_or_even(parm1) %}

CASE WHEN MOD({{parm1}},2) = 0
     THEN 'EVEN'
     ELSE 'ODD'
END

{% endmacro %}