{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "deletedEmoteStats_animated_emotes_title"/>"
            },
            "description": "<#list row as emote><#assign emote=emote><@safe_include "deletedEmoteStats_animated_emote_entry"/><#sep>, </#list>"
        }
    ],
    "buttons": [
        <#include "paginator_buttons">
    ]
}