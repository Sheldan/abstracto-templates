{
    "additionalMessage": "<@safe_include "server_chooser_server_list_description"/>",
    "buttons": [
        <#list choices.commonGuilds?keys as componentId>
            {
                "label": "${choices.commonGuilds[componentId].serverName}",
                "id": "${componentId}",
                "buttonStyle": "secondary",
                "metaConfig": {
                    "persistCallback": false
                }
            }<#sep>,</#list>
    ]
}