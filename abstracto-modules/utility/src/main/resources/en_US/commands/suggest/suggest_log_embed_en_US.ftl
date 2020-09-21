{
  "author": {
    <#if suggester?has_content>
    "name": "<@member_user_name member=suggester/>",
    "avatar":  "${suggester.user.effectiveAvatarUrl}"
    <#else>
    "name": "${suggesterUser.userReference.id}"
    </#if>
  },
  <#assign user><@member_user_name member=member/></#assign>
  <#if state = "ACCEPTED">
  "title": {
      "title": "<@safe_include "suggest_accepted_by"/>"
    },
  <#elseif state = "REJECTED">
    "title": {
        "title": "<@safe_include "suggest_rejected_by"/>"
    },
  </#if>
  <#include "abstracto_color">,
  <#assign id>${suggestionId}</#assign>
  <#if state = "ACCEPTED" || state = "REJECTED">
  "description": "~~${text?js_string}~~",
  <#else>
  "description": "${text?js_string}",
  </#if>
  <#if state = "ACCEPTED" || state = "REJECTED">
  "fields": [
    {
        "name": "<@safe_include "suggest_link_field_title"/>",
        "value": "[<@safe_include "suggest_link_display_value"/>](${originalMessageUrl})"
    }
    <#if reason?has_content>
    ,
    {
        "name": "<@safe_include "suggest_reason_field_title"/>",
        "value": "${reason?js_string}"
    }
    </#if>
  ],
  </#if>
  "footer": {
    "text": "<@safe_include "suggest_suggestion_id_footer"/>"
  }
}