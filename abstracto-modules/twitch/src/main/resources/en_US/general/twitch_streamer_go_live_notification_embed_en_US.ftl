<#include "format_instant">
{
    <#assign channelName=channelName>
    <#assign streamerAvatarURL=streamerAvatarURL>
    <#assign streamURL=streamURL>
    <#assign title=currentSection.title>
    <#assign thumbnail=currentSection.thumbnailURL>
    <#assign viewerCount=currentSection.viewerCount>
      <#assign roleMention="<@&766751512009244712>"/>
    "additionalMessage": "<@safe_include "twitch_streamer_go_live_notification_text"/> ${roleMention}",
    "embeds": [
        {
            <#include "twitch_color">,
            "author": { "name": "${channelName}", "avatar":  "${streamerAvatarURL}", "url": "${streamURL}"},
            "title": {
                "title": "${title?json_string}"
            },
            "description": "<@safe_include "twitch_streamer_go_live_notification_current_section"/> <#if pastSections?? && pastSections?size gt 0><@safe_include "twitch_streamer_go_live_notification_past_sections"/></#if>",
            "imageUrl": "${thumbnail}"
        }
    ],
    "messageConfig": {
        "allowsRoleMention": true
    },
    "buttons": [
        {
            "label": "<@safe_include "twitch_streamer_go_live_notification_watch_button"/>",
            "url": "${streamURL?json_string}",
            "buttonStyle": "link",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
}