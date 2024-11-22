{
    "embeds": [
        {
            <#include "assignable_place_color">,
            "description": "<@safe_include "assignable_role_places_overview_description"/>:
<#list places as place>`<#assign place=place/><#assign placeKey=place.placeName/><@safe_include "assignable_role_places_overview_place"/>`<#sep>, <#else> <@safe_include "assignable_role_places_overview_no_places"/></#list>
"
        }
    ]
}