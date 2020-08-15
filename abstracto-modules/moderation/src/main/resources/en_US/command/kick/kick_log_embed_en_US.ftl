{
  "author": {
    "name": "${kickedUser.effectiveName?js_string}",
    "avatar":  "${kickedUser.user.effectiveAvatarUrl}"
  },
  "title": {
    "title": "<@safe_include "kick_log_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "fields": [
    {
      "name": "<@safe_include "kick_log_kicked_user_field_title"/>",
      "value": "${kickedUser.effectiveName?js_string} ${kickedUser.asMention?js_string} (${kickedUser.idLong?c})"
    },
    {
        "name": "<@safe_include "kick_log_kicking_user_field_title"/>",
        "value": "${kickingUser.effectiveName?js_string} ${kickingUser.asMention?js_string} (${kickingUser.idLong?c})"
    },
    {
        "name": "<@safe_include "kick_log_jump_link_field_title"/>",
        "value": "[${messageChannel.name?js_string}](${message.jumpUrl})"
    },
    {
        "name": "<@safe_include "kick_log_reason_field_title"/>",
        "value": "${reason?js_string}"
    }
  ]
}