{
  <#include "user_author">
  <@user_author user=author/>,
  <#include "modmail_color">
  <#if message.embeds[0].description?has_content>
  ,"description": "${message.embeds[0].description?json_string}"
  </#if>
   <#if message.embeds[0].image?has_content>
     ,"imageUrl": "${message.embeds[0].image.proxyUrl}"
   </#if>
   <#if modMailMessage.anonymous>
   , "additionalMessage": "<@safe_include "modmail_anonymous_message_note"/>"
   </#if>
   ,"timeStamp": "${message.timeCreated}"
}
