{
    "embeds": [
        {
            "title": {
            "title": "<@safe_include "emoteStats_static_emotes_title"/>"
            },
            <#include "statistic_color">,
            "description": "<#list staticEmotes as emote><#if emote.emote?has_content>${emote.emote.asMention}x${emote.result.amount?c}<#sep>, </#if></#list>"
        }
    ]
}