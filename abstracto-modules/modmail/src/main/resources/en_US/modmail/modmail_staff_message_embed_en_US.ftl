{
  <#include "member_author">
  <@member_author member=moderator/>,
  "title": {
    "title": "<@safe_include "modmail_thread_staff_message_title"/>"
  },
  <#include "modmail_color">,
  <#if text?has_content>
   , "description": "${text?js_string}"
  </#if>
   <#if postedMessage.attachments?size gt 0>
   ,"imageUrl": "${postedMessage.attachments[0].proxyUrl}"
   </#if>
}