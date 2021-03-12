{
  <#include "member_author">
  <@member_author member=author/>,
  <#include "abstracto_color">,
  <#if embeddedMessage.content?has_content || embeddedMessage.embeds?size gt 0>
   "description": "${embeddedMessage.content?js_string}
   <#list embeddedMessage.embeds>
        <@safe_include "message_embed_embed_embeds_name"/>:
        <#items as embed><#assign embed=embed/>
            <@safe_include "message_embed_embed_description"/>: <#if embed.description?has_content >${embed.description?js_string}</#if> <#if embed.imageUrl?has_content> <@safe_include "message_embed_embed_image_url"/>: ${embed.imageUrl} </#if>
        </#items>
   </#list>
   ",
  </#if>
  <#if embeddedMessage.attachments?size gt 0>
  "imageUrl": "${embeddedMessage.attachments[0].proxyUrl}",
  </#if>
  "fields": [
    {
      "name": "<@safe_include "message_embed_embed_quoted_by_field_title"/>",
      <#assign user>${embeddingUser.asMention?js_string}</#assign>
      <#assign channelName>${sourceChannel.name?js_string}</#assign>
      <#assign messageLink>${embeddedMessage.messageUrl}</#assign>
      "value": "<@safe_include "message_embed_embed_quoted_by_field_value"/>"
    }
  ],
  "timeStamp": "${embeddedMessage.timeCreated}"
}