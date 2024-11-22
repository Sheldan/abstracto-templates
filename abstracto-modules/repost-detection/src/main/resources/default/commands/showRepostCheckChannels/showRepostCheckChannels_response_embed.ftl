{
    "embeds": [
        {
            <#include "member_author">
            <#include "success_color">,
            "description": "
<#list repostCheckChannelGroups as group>
<@safe_include "showRepostCheckChannels_response_embed_description"/>: ${group.channelGroup.channelGroup.groupName}(<#list group.channels as channel>${channel.channelRepr}<#sep>, <#else><@safe_include "showRepostCheckChannels_response_embed_no_channels"/></#list>)

<#else><@safe_include "showRepostCheckChannels_response_embed_no_channel_groups"/></#list>
"
        }
    ]
}