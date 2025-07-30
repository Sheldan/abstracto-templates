<#include "format_instant">
{
    <#assign channelName=channelName>
    <#assign streamerAvatarURL=streamerAvatarURL>
    <#assign streamURL=streamURL>
    <#assign title=currentSection.title>
    <#assign thumbnail=currentSection.thumbnailURL>
    <#assign viewerCount=currentSection.viewerCount>
    "components": [
        <#assign additionalText><@safe_include "twitch_streamer_go_live_notification_text"/></#assign>
        {
            "type": "section",
            "components": [
                {
                    "type": "textDisplay",
                    "content": "${(additionalText)!''}\n# ${title?json_string} \n <@safe_include "twitch_streamer_go_live_notification_current_section"/>"
                }
                <#if pastSections?? && pastSections?size gt 0>,
                {
                    "type": "textDisplay",
                    "content": "<@safe_include "twitch_streamer_go_live_notification_past_sections"/>"
                }
                </#if>
            ]
            ,"accessory": {
                "type": "thumbnail",
                "url": "${streamerAvatarURL}"
            }
        },
        {
            "type": "mediaGallery",
            "images": [
                {
                    "url": "${thumbnail}?${randomString}"
                }
            ]
        },
        {
            "type": "actionRow",
            "actionRowItems": [
                {
                    "type": "button",
                    "label": "<@safe_include "twitch_streamer_go_live_notification_watch_button"/>",
                    "url": "${streamURL?json_string}",
                    "buttonStyle": "link"
                }
            ]
        }
    ],
    "messageConfig": {
        "allowsRoleMention": true,
        "useComponentsV2": true
    }
}