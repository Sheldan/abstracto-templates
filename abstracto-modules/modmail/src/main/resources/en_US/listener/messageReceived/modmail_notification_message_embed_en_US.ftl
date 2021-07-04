{
  <#include "member_author">
  <@member_author member=member/>,
  "title": {
    "title": "<@safe_include "modmail_notification_message_title"/>"
  },
  "metaConfig": {
    "allowsRoleMention": true
  },
  <#include "modmail_color">,
  <#assign user><@member_user_name member=member/>(${member.user.id})</#assign>
  "description": "<@safe_include "modmail_notification_message_description"/>",
  "fields": [
        {
          "name": "<@safe_include "modmail_notification_field_title_channel"/>",
          "value": "${channel.asMention}"
        }
      ]
  <#if roles?size gt 0>
  ,"additionalMessage": "<#list roles as role>${role.role.asMention?json_string}<#sep>,</#list>"
  </#if>
}