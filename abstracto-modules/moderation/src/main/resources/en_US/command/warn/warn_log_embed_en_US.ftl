{
  <#include "full_member_info">
  <#include "member_author">
  <@member_author member=warnedUser/>,
  "title": {
    "title": "<@safe_include "warn_log_title"/>"
  },
  <#include "moderation_action_color">,
  "fields": [
    {
      "name": "<@safe_include "warn_log_warned_user_field_title"/>",
      "value": "<@full_member_info member=warnedUser/>"
    },
    <#if warningUser?has_content>
    {
        "name": "<@safe_include "warn_log_warning_user_field_title"/>",
        "value": "<@full_member_info member=warningUser/>"
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