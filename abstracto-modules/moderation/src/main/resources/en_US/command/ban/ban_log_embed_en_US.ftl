{
  <#include "full_member_info">
  <#include "member_author">
  <@member_author member=bannedUser/>,
  "title": {
    "title": "<@safe_include "ban_log_title"/>"
  },
  <#include "moderation_action_color">,
  "fields": [
    {
      "name": "<@safe_include "ban_log_banned_user_field_title"/>",
      "value": "<@full_member_info member=bannedUser/>"
    },
    {
        "name": "<@safe_include "ban_log_banning_user_field_title"/>",
        "value": "<@full_member_info member=banningUser/>"
    },
    {
        "name": "<@safe_include "ban_log_jump_link_field_title"/>",
        "value": "[${messageChannel.name?js_string}](${message.jumpUrl})"
    },
    {
        "name": "<@safe_include "ban_log_reason_field_title"/>",
        "value": "${reason?js_string}"
    }
  ]
}