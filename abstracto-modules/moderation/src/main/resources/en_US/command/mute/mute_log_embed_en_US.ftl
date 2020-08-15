{
  "author": {
    "name": "${mutedUser.effectiveName?js_string}",
    "avatar":  "${mutedUser.user.effectiveAvatarUrl}"
  },
  "title": {
    "title": "<@safe_include "mute_log_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "fields": [
    {
      "name": "<@safe_include "mute_log_muted_user_field_title"/>",
      "value": "${mutedUser.effectiveName?js_string} ${mutedUser.asMention?js_string} (${mutedUser.idLong?c})"
    },
    {
        "name": "<@safe_include "mute_log_muting_user_field_title"/>",
        "value": "${mutingUser.effectiveName?js_string} ${mutingUser.asMention?js_string} (${mutingUser.idLong?c})"
    },
    {
        "name": "<@safe_include "mute_log_mute_location_field_title"/>",
        "value": "[${messageChannel.name?js_string}](${message.jumpUrl})"
    },
    {
        "name": "<@safe_include "mute_log_mute_reason_field_title"/>",
        "value": "${mute.reason?js_string}"
    },
    {
        "name": "<@safe_include "mute_log_mute_duration_field_title"/>",
        "value": "${fmtDuration(muteDuration)}"
    },
    {
        "name": "<@safe_include "mute_log_muted_until_field_title"/>",
        "value": "${formatDate(mute.muteTargetDate, "yyyy-MM-dd HH:mm:ss")}"
    }
  ],
  "footer": {
    "text": "<@safe_include "mute_log_mute_id_footer"/> #${mute.id}"
  },
  "timeStamp": "${mute.muteDate}"
}