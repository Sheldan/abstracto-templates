{
    "embeds": [
        {
            <#include "statistic_color">,
            "description": "<#if emote?has_content>${emote.asMention}<#else>${trackedEmote.emoteName}</#if>x${result.amount?c}"
        }
    ]
}