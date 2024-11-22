{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "externalEmoteStats_animated_emotes_title"/>"
            },
            <#include "statistic_color">,
            "description": "<#list animatedEmotes as emote>`${emote.trackedEmote.emoteName}:${emote.trackedEmote.trackedEmoteId.id?c}`x${emote.result.amount?c}<#sep>, </#list>"
        }
    ]
}