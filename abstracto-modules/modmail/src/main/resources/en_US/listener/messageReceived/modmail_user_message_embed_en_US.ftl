{
  <#include "member_author">
  <@member_author member=member/>,
  "title": {
    "title": "<@safe_include "modmail_thread_user_message_title"/>"
  },
  <#include "modmail_color">,
  <#if postedMessage.contentRaw?has_content>
    "description": "${postedMessage.contentRaw?json_string}"
  </#if>
   <#if postedMessage.attachments?size gt 0>
   <#if postedMessage.contentRaw?has_content>,</#if>
   "imageUrl": "${postedMessage.attachments[0].proxyUrl}"
   </#if>
   <#if subscribers?size gt 0>
   <#if postedMessage.contentRaw?has_content || postedMessage.attachments?size gt 0>,</#if>
   "additionalMessage": "<#list subscribers as subscriber>${subscriber.asMention?json_string}<#sep>, </#list>"
   </#if>
}