{
  <#include "full_member_info">
  <#include "member_author">
  <@member_author member=kickedUser/>,
  "title": {
    "title": "<@safe_include "kick_log_title"/>"
  },
  <#include "moderation_action_color">,
  "fields": [
    {
      "name": "<@safe_include "kick_log_kicked_user_field_title"/>",
      "value": "<@full_member_info member=kickedUser/>"
    },
    {
        "name": "<@safe_include "kick_log_kicking_user_field_title"/>",
        "value": "<@full_member_info member=member/>"
    },
    {
        "name": "<@safe_include "kick_log_jump_link_field_title"/>",
        "value": "[${channel.name?json_string}](${message.jumpUrl})"
    },
    {
        "name": "<@safe_include "kick_log_reason_field_title"/>",
        "value": "${reason?json_string}"
    }
  ]
}