{
    "embeds": [
        {
            <#include "twitch_color">,
            "description": "<#list streamers as streamer>
<#assign streamer=streamer>
<#assign name=streamer.name>
<#if streamer.targetChannel?has_content>
<#assign targetChannel=streamer.targetChannel.channelMention>
</#if>
<#assign showNotificationsDisplay>${streamer.showNotifications?string('✅', '❌')}</#assign>
<#assign streamerURL=streamer.streamerURL>
<#include "listTwitchStreamer_response_streamer_display"><#sep>
</#list>"
        }
    ]
}