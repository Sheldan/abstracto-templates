{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "showTrackedEmotes_static_tracked_emotes_title"/>"
            },
            <#include "statistic_color">,
            "description": "<#list staticEmotes as emote><#if emote.emote?has_content>${emote.emote.asMention}<#if !emote.trackedEmote.trackingEnabled>(<#include "showTrackedEmotes_emote_tracking_disabled">)</#if><#sep> </#if></#list>"
        }
    ]
}