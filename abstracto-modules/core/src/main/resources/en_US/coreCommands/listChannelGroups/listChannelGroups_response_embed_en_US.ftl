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
            "name": "${group.name?js_string}",
            "value": "
            <#list group.channels as channel>${channel.discordChannel.asMention?js_string}<#sep>,</#list>
            "
        }<#sep>,
      <#else>
     </#list>
  ]
}