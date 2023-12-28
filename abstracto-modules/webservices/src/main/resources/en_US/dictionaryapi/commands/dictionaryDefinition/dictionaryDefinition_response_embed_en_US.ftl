{
    "embeds": [
        {
            <#include "abstracto_color">,
            "title": {
                "title": "${word?json_string}"
            },
            <#macro definitionDisplay definition>
                <#assign meaning=definition.definition>
                <#assign hasExample=definition.example?has_content>
                <#if hasExample>
                    <#assign example=definition.example>
                </#if>
                <@safe_include "dictionaryDefinition_response_meaning_display"/>


            </#macro>
            "description": "<#list definitions as definition>${definition?index + 1}: <@definitionDisplay definition=definition /></#list>"
        }
    ]
}