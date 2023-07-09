<#include "format_instant">
{
    "embeds": [
        {
            <#include "twitch_color">,
            <#assign channelName=channelName>
            <#assign avatarURL=avatarURL>
            "title": {
                "title": "<@safe_include "twitch_streamer_went_offline_notification_title"/>"
            },
            "author": { "name": "${channelName}", "avatar":  "${avatarURL}"},
            "description": "<@safe_include "twitch_streamer_went_offline_notification_past_sections"/>"
            <#if offlineImageURL??>,
            <#assign offlineImageURL=offlineImageURL>
            "imageUrl": "${offlineImageURL}"</#if>
        }
    ]
}