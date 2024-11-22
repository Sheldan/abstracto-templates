{
    "embeds": [
        {
            <#include "abstracto_color">,
            "description": "
<#list effects as effect>
`${effect}` <@safe_include "effect_type_${effect}_description"/>
<#else><#include "showEffects_response_no_effects">
</#list>
"
        }
    ]
}