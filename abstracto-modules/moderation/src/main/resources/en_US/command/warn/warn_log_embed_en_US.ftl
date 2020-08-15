{
  "author": {
    "name": "${warnedUser.effectiveName?js_string}",
    "avatar":  "${warnedUser.user.effectiveAvatarUrl}"
  },
  "title": {
    "title": "<@safe_include "warn_log_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "fields": [
    {
      "name": "<@safe_include "warn_log_warned_user_field_title"/>",
      "value": "${warnedUser.effectiveName?js_string} ${warnedUser.asMention?js_string} (${warnedUser.idLong?c})"
    },
    <#if warningUser?has_content>
    {
        "name": "<@safe_include "warn_log_warning_user_field_title"/>",
        "value": "${warningUser.effectiveName?js_string} ${warningUser.asMention?js_string} (${warningUser.idLong?c})"
    },
    </#if>
     <#if warning?has_content>
    {
        "name": "<@safe_include "warn_log_warn_location_field_title"/>",
        "value": "[${messageChannel.name?js_string}](${message.jumpUrl})"
    },
    </#if>
    {
        "name": "<@safe_include "warn_log_warn_reason_field_title"/>",
        "value": "${reason?js_string}"
    }
  ],
  "footer": {
    <#if warningUser?has_content>
    "text": "<@safe_include "warn_log_warn_id_footer"/> #${warning.id}"
    </#if>
  }
}