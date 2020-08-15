{
  "author": {
    "name": "${bannedUser.effectiveName?js_string}",
    "avatar":  "${bannedUser.user.effectiveAvatarUrl}"
  },
  "title": {
    "title": "<@safe_include "ban_log_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "fields": [
    {
      "name": "<@safe_include "ban_log_banned_user_field_title"/>",
      "value": "${bannedUser.effectiveName?js_string} ${bannedUser.asMention?js_string} (${bannedUser.idLong?c})"
    },
    {
        "name": "<@safe_include "ban_log_banning_user_field_title"/>",
        "value": "${banningUser.effectiveName?js_string} ${banningUser.asMention?js_string} (${banningUser.idLong?c})"
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