{
  <#include "member_author">
  <@member_author member=threadUser.member/>,
  "title": {
    "title": "<@safe_include "modmail_thread_user_message_title"/>"
  },
  <#include "modmail_color">,
  <#if postedMessage.contentRaw?has_content>
    "description": "${postedMessage.contentRaw?js_string}"
  </#if>
   <#if postedMessage.attachments?size gt 0>
   ,"imageUrl": "${postedMessage.attachments[0].proxyUrl}"
   </#if>
   <#if subscribers?size gt 0>
   ,"additionalMessage": "<#list subscribers as subscriber>${subscriber.member.asMention?js_string}<#sep>,</#list>"
   </#if>
}