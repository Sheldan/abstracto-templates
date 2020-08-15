{
  "author": {
    <#if suggester?has_content>
    "name": "${suggester.effectiveName?js_string}",
    "avatar":  "${suggester.user.effectiveAvatarUrl}"
    <#else>
    "name": "${suggesterUser.userReference.id}"
    </#if>
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  <#assign user>${member.effectiveName?js_string}</#assign>
  <#assign id>${suggestion.id}</#assign>
  <#if suggestion.state = "ACCEPTED">
    "description": "~~${text?js_string}~~ \n✅ ${reason} - <@safe_include "suggest_accepted_by"/>",
  <#elseif suggestion.state = "REJECTED">
    "description": "~~${text?js_string}~~ \n❌ ${reason} - <@safe_include "suggest_rejected_by"/>",
  <#else>
    "description": "${text?js_string}",
  </#if>
  <#if suggestion.state = "ACCEPTED" || suggestion.state = "REJECTED">
  "fields": [
    {
        "name": "<@safe_include "suggest_link_field_title"/>",
        "value": "[<@safe_include "suggest_link_display_value"/>](${originalMessageUrl})"
    }
  ],
  </#if>
  "footer": {
    "text": "<@safe_include "suggest_suggestion_id_footer"/>"
  }
}