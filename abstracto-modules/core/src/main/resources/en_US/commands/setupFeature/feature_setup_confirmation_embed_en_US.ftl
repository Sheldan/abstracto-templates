{
    "embeds": [
        {
            "description": "<#list actionConfigs as actionConfig><#assign actionConfig=actionConfig/>
                <#assign param=actionConfig.object.templateModel>
                <@safe_include "${actionConfig.object .templateName}"/>

            </#list>
            "
        }
    ],
    "buttons": [
        {
            "label": "<@safe_include "feature_setup_confirmation_confirm_button_title"/>",
            "id": "${confirmButtonId}",
            "buttonStyle": "secondary",
            "metaConfig": {
                "persistCallback": false
            }
        },
        {
            "label": "<@safe_include "feature_setup_confirmation_cancel_button_title"/>",
            "id": "${cancelButtonId}",
            "buttonStyle": "secondary",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
}