{
    "embeds": [
        {
            "description": "<#list row as key><#assign key=key><@safe_include "showGiveawayKeys_key_entry"/>\n</#list>"
        }
    ],
    "buttons": [
        <#include "paginator_buttons">
    ]
}