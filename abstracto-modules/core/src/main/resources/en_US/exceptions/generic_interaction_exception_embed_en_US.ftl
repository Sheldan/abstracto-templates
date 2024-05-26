{
    "embeds": [
        {
            <#include "exception_color">,
            "metaConfig" : {
                "preventEmptyEmbed": "true"
            },
            <#if template?has_content>
            <#if template.templateModel?has_content>
            <#assign model=template.templateModel/>
            "description": "<@safe_include "${template.templateName}"/>"
            </#if>
            <#elseif throwable.localizedMessage?has_content>
            "description": "${throwable.localizedMessage?json_string}"
            <#else>
            "description": "${throwable.class.simpleName?json_string}"
            </#if>
        }
    ],
    "messageConfig": {
        "ephemeral": true
    }
}