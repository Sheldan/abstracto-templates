{
    "embeds": [
        {
            "description": "<#list row as configValue><#assign configValue=configValue><@safe_include "getConfig_config_value_entry"/>\n</#list>"
        }
    ],
    "buttons": [
        <#include "paginator_buttons">
    ]
}