{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "externalEmoteStats_animated_emotes_title"/>"
            },
            "description": "<#list row as emote><#assign emote=emote><@safe_include "externalEmoteStats_animated_emote_entry"/><#sep>, </#list>"
        }
    ],
    "buttons": [
        <#include "paginator_buttons">
    ]
}