{
  <#include "member_author">
  <@member_author member=threadUser.member/>,
  "title": {
    "title": "<@safe_include "modmail_notification_message_title"/>"
  },
  <#include "modmail_color">,
  <#assign user><@member_user_name member=threadUser.member/>(${threadUser.member.user.id})</#assign>
  "description": "<@safe_include "modmail_notification_message_description"/>"
  <#if roles?size gt 0>
  ,"additionalMessage": "<#list roles as role>${role.role.asMention?js_string}<#sep>,</#list>"
  </#if>
}