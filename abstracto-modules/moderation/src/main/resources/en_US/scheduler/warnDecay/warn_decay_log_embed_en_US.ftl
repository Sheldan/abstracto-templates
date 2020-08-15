{
  "title": {
    "title": "<@safe_include "warnDecay_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "<#list warnings as warning><#assign warning=warning/>
        <#if warning.warnedMember??><#assign warnedUser>${warning.warnedMember.asMention?js_string} (${warning.warnedMember.id})</#assign><#else><#assign warnedUser> ${warning.warning.warnedUser.userReference.id?c}</#assign></#if> <#if warning.warningMember??><#assign warningUser> ${warning.warningMember.asMention?js_string} (${warning.warningMember.id})</#assign><#else><#assign warningUser>${warning.warning.warningUser.userReference.id?c}</#assign></#if>   <@safe_include "warnDecay_log_warn_entry"/>
  <#else>
  <@safe_include "warnDecay_log_no_warnings"/>
  </#list>"
}