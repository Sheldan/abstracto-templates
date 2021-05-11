{
  "title": {
    "title": "<@safe_include "warnDecay_title"/>"
  },
  <#include "moderation_action_color">,
  "description": "<#list warnings as warning><#assign warning=warning/>
        <#if warning.warnedMember??><#assign warnedUser>${warning.warnedMember.asMention?json_string} (${warning.warnedMember.id?c})</#assign><#else><#assign warnedUser> ${warning.warnedUser.userId?c}</#assign></#if> <#if warning.warningMember??><#assign warningUser> ${warning.warningMember.asMention?json_string} (${warning.warningMember.id})</#assign><#else><#assign warningUser>${warning.warningUser.warningUser.userId?c}</#assign></#if> <#assign warnDate>${formatDate(warning.warning.warnDate, "yyyy-MM-dd HH:mm:ss zz")}</#assign><#assign warnReason=warning.warning.reason/> <@safe_include "warnDecay_log_warn_entry"/>
  <#else>
  <@safe_include "warnDecay_log_no_warnings"/>
  </#list>"
}