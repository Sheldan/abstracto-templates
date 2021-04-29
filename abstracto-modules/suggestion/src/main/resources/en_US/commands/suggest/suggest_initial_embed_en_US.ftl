{
  <#include "user_author">
  <@user_author user=suggester/>,
  <#include "user_user_name">
  <#assign user><@user_user_name user=suggester/></#assign>
  <#include "abstracto_color">,
  <#assign id>${suggestionId}</#assign>
  "description": "${text?json_string}",
  <#if message?? && message.attachments?size gt 0>
    "imageUrl": "${message.attachments[0].proxyUrl}",
  </#if>
  "footer": {
    "text": "<@safe_include "suggest_suggestion_id_footer"/>"
  }
}