{
  <#include "member_author">
  <@member_author member=author.member/>,
  <#include "modmail_color">,
  <#if message.embeds[0].description?has_content>
  ,"description": "${message.embeds[0].description?js_string}"
  </#if>
   <#if message.attachments?size gt 0>
     ,"imageUrl": "${message.embeds[0].image.proxyUrl}"
   </#if>
   <#if modMailMessage.anonymous>
   , "additionalMessage": "<@safe_include "modmail_anonymous_message_note"/>"
   </#if>
   ,"timeStamp": "${message.timeCreated}"
}
