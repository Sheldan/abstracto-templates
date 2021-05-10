{
  <#include "abstracto_color">,
  "description": "
<#list effects as effect>
`${effect}` <@safe_include "effect_type_${effect}_description"/>
</#list>
"
}