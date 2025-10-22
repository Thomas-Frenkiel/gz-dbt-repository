 {% macro margin_percent(ads_margin, revenue) %}
     ROUND(SAFE_DIVIDE({{ads_margin}} , {{revenue}}), 2)
 {% endmacro %}