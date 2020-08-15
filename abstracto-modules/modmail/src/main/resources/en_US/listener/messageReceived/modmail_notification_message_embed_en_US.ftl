{
  "author": {
    "name": "${threadUser.member.effectiveName?js_string}",
    "avatar":  "${threadUser.member.user.effectiveAvatarUrl}"
  },
  "title": {
    "title": "<@safe_include "modmail_notification_message_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  <#assign user>${threadUser.member.effectiveName?js_string}#${threadUser.member.user.discriminator}(${threadUser.member.user.id})</#assign>
  "description": "<@safe_include "modmail_notification_message_description"/>"
  <#if roles?size gt 0>
  ,"additionalMessage": "<#list roles as role>${role.role.asMention?js_string}<#sep>,</#list>"
  </#if>
}