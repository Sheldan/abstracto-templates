<#include "format_instant">
{
    "components": [
        {
            <#assign channelName=channelName>
            <#assign avatarURL=avatarURL>
            "type": "section",
            "components": [
                {
                    "type": "textDisplay",
                    "content": "<@safe_include "twitch_streamer_went_offline_notification_title"/>"
                },
                {
                    "type": "textDisplay",
                    "content": "<@safe_include "twitch_streamer_went_offline_notification_past_sections"/>"
                }
            ]
            ,"accessory": {
                "type": "thumbnail",
                "url": "${avatarURL}"
            }
        }
        <#if offlineImageURL??>,
        {
            "type": "mediaGallery",
            "images": [
                {
                    "url": "${offlineImageURL}"
                }
            ]
        }
        </#if>
    ],
    "messageConfig": {
        "useComponentsV2": true
    }
}