{
  <#include "user_detail">
  <#include "full_member_info">
  "title": {
    "title": "<@safe_include "ban_log_title"/>"
  },
  <#include "moderation_action_color">,
  "fields": [
    {
      "name": "<@safe_include "ban_log_banned_user_field_title"/>",
      "value": "<@user_detail user=bannedUser/>"
    },
    {
        "name": "<@safe_include "ban_log_banning_user_field_title"/>",
        "value": "<@full_member_info member=banningMember/>"
    },
    {
        "name": "<@safe_include "ban_log_jump_link_field_title"/>",
        "value": "[${commandMessage.channel.name?json_string}](${commandMessage.jumpUrl})"
    },
    {
        "name": "<@safe_include "ban_log_reason_field_title"/>",
        "value": "${reason?json_string}"
    }
    <#if deletionDays gt 0>
    ,
    {
     "name": "<@safe_include "ban_log_deletion_days_field_title"/>",
     "value": "${deletionDays?c}"
    }
    </#if>
  ]
}