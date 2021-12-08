{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "listChannelGroups_embed_title"/>"
            },
            <#include "success_color">,
            <#if groups?size = 0>
            "description": "<@safe_include "listChannelGroups_no_channel_group"/>"
            <#else>
            "fields": [
             <#list groups as group>
                {
                    "name": "${group.name?json_string} (<@safe_include "channel_group_type_${group.typeKey}_name"/> ${group.enabled?string('✅', '❌')})",
                    "value": "
                    <#if group.channelGroupInformation??><#assign model=group.channelGroupInformation.templateModel/> <@safe_include "${group.channelGroupInformation.templateName}"/></#if>
                    <#list group.channels as channel><#if channel.discordChannel??>${channel.discordChannel.asMention?json_string}<#else>${channel.channel.id?c}</#if><#sep>,<#else> <@safe_include "listChannelGroups_no_channels"/></#list>
                    "
                }<#sep>,
             </#list>
            ]
            </#if>
        }
    ]
}