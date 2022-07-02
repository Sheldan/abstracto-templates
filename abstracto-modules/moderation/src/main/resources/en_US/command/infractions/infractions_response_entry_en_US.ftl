{
    "embeds": [
        {
            "description": "<#list row as infraction><#assign infraction=infraction><@safe_include "infractions_infraction_entry"/>\n</#list>"
        }
    ],
    "buttons": [
        <#include "paginator_buttons">
    ]
}