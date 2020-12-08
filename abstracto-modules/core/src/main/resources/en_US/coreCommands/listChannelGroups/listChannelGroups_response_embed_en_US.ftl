{
  "title": {
    "title": "<@safe_include "listChannelGroups_embed_title"/>"
  },
  <#include "success_color">,
  <#if groups?size = 0>
  "description": "<@safe_include "listChannelGroups_no_channel_group"/>",
  </#if>
  "fields": [
     <#list groups as group>
        {
            "name": "${group.name?js_string} (<@safe_include "channel_group_type_${group.typeKey}_name"/>)",
            "value": "
            <#list group.channels as channel>${channel.discordChannel.asMention?js_string}<#sep>,<#else> <@safe_include "listChannelGroups_no_channels"/></#list>
            "
        }<#sep>,
     </#list>
  ]
}