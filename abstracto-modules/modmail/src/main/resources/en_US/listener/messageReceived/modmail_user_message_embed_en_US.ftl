{
  <#include "member_author">
  <@member_author member=member/>,
  "title": {
    "title": "<@safe_include "modmail_thread_user_message_title"/>"
  },
  <#include "modmail_color">,
  <#if subscribers?size gt 0>
   "additionalMessage": "<#list subscribers as subscriber>${subscriber.asMention?json_string}<#sep>, </#list>",
  </#if>
  <#if postedMessage.contentRaw?has_content>
    "description": "${postedMessage.contentRaw?json_string}"
  <#else>
    "description": "<@safe_include "modmail_no_message_provided"/>"
  </#if>
   <#if postedMessage.attachments?size gt 0>
   ,"imageUrl": "${postedMessage.attachments[0].proxyUrl}"
   </#if>
}