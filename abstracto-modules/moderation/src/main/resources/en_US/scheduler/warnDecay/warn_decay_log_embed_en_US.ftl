{
  "title": {
    "title": "<@safe_include "warnDecay_title"/>"
  },
  <#include "moderation_action_color">,
  "description": "<#list warnings as warning><#assign warning=warning/>
        <#if warning.warnedMember??><#assign warnedUser>${warning.warnedMember.asMention?js_string} (${warning.warnedMember.id})</#assign><#else><#assign warnedUser> ${warning.warning.warnedUser.userReference.id?c}</#assign></#if> <#if warning.warningMember??><#assign warningUser> ${warning.warningMember.asMention?js_string} (${warning.warningMember.id})</#assign><#else><#assign warningUser>${warning.warning.warningUser.userReference.id?c}</#assign></#if> <#assign warnDate>${formatDate(warning.warning.warnDate, "yyyy-MM-dd HH:mm:ss")}</#assign><#assign warnReason=warning.warning.reason/> <@safe_include "warnDecay_log_warn_entry"/>
  <#else>
  <@safe_include "warnDecay_log_no_warnings"/>
  </#list>"
}