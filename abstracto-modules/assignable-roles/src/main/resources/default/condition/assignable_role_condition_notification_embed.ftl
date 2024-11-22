{
    "embeds": [
        {
            <#include "abstracto_color">,
            "metaConfig" : {
                "preventEmptyEmbed": "true"
            },
            <#assign model=templateModel/>
            "description": "<@safe_include "${templateName}"/>"
        }
    ],
    "messageConfig": {
        "ephemeral": true
    }
}