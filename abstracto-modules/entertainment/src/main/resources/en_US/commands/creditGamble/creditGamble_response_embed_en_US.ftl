{
    "embeds": [
        {
            <#include "abstracto_color">,
            <#assign rolls=rolls?join(", ")>
            <#assign uniqueNumbers=uniqueNumbers>
            <#assign bid=bid>
            <#assign toBank=toBank>
            <#assign toJackpot=toJackpot>
            <#assign currentJackpot=currentJackpot>
            <#assign won=won>
            <#if won>
                "description": "<@safe_include "creditGamble_response_win_text.ftl"/>"
            <#else>
                "description": "<@safe_include "creditGamble_response_text"/>"
            </#if>
        }
    ]
}
