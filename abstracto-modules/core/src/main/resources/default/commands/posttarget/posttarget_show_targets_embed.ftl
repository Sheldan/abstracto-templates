{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "posttarget_embed_title"/>"
            },
            <#include "success_color">,
            "description": "
<#list postTargets as postTarget><#assign postTarget=postTarget/>
<#assign postTargetName>${postTarget.name?json_string}</#assign>
<#assign statusIndicator>${postTarget.disabled?string('❌', '✅')}</#assign>
<#assign channelGroupText="">
<#if postTarget.channelGroup??>
    <#assign additionalChannels=postTarget.channelGroup.additionalChannels?map(channel -> channel.channelMention)?join(", ")>
    <#assign channelGroupText>${postTarget.channelGroup.name} ${postTarget.channelGroup.disabled?string('❌', '✅')}: ${additionalChannels}</#assign>
</#if>
<#assign channelMention><#if postTarget.channel?has_content>${postTarget.channel.channelMention?json_string}<#else><@safe_include "posttarget_no_channel"/></#if></#assign>
<@safe_include "posttarget_post_target_text"/>

<#if postTarget.channelGroup??>
    <@safe_include "posttarget_post_target_channel_group_text"/>

</#if>
<#else>
<@safe_include "posttarget_no_post_targets_found"/>
</#list>
"
        }
    ]
}