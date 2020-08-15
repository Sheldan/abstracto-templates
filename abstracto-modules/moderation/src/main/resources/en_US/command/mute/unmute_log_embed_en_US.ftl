{
  <#if unMutedUser?has_content>
    "author": {
        "name": "${unMutedUser.effectiveName?js_string}",
        "avatar":  "${unMutedUser.user.effectiveAvatarUrl}"
    },
  </#if>
  "title": {
    "title": "<@safe_include "unMute_log_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "fields": [
    {
      "name": "<@safe_include "unMute_log_unmuted_user_field_title"/>",
      <#if unMutedUser?has_content>
        "value": "${unMutedUser.effectiveName?js_string} ${unMutedUser.asMention?js_string} (${unMutedUser.idLong?c})"
      <#else>
        "value": "<@safe_include "user_left_server"/> (${mute.mutedUser.userReference.id?c})"
      </#if>

    },
    {
        "name": "<@safe_include "mute_log_muting_user_field_title"/>",
         <#if mutingUser?has_content>
            "value": "${mutingUser.effectiveName?js_string} ${mutingUser.asMention?js_string} (${mutingUser.idLong?c})"
         <#else>
                "value": "<@safe_include "user_left_server"/> (${mute.mutingUser.userReference.id?c})"
         </#if>
    },
    {
        "name": "<@safe_include "mute_log_mute_location_field_title"/>",
        "value": "[Link](${messageUrl})"
    },
    {
        "name": "<@safe_include "unMute_log_muted_since_field_title"/>",
        "value": "${formatDate(mute.muteDate, "yyyy-MM-dd HH:mm:ss")}"
    },
    {
        "name": "<@safe_include "mute_log_mute_duration_field_title"/>",
        "value": "${fmtDuration(muteDuration)}"
    },
    {
        "name": "<@safe_include "mute_log_mute_reason_field_title"/>",
        "value": "${mute.reason?js_string}"
    }
  ],
  "footer": {
    "text": "<@safe_include "mute_log_mute_id_footer"/> #${mute.id}"
  },
  "timeStamp": "${unmuteDate}"
}