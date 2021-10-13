<#include "format_instant">
<#assign warnId>${warning.warning.warnId.id}</#assign>
<#assign reason>${warning.warning.reason}</#assign>
<#assign warnedUserText><#if warning.warnedUser.member??>${warning.warnedUser.member.asMention}(${warning.warnedUser.member.user.id})<#else>${warning.warnedUser.userId?c}</#if></#assign>
<#assign warningUserText><#if warning.warningUser.member??>${warning.warningUser.member.asMention}(${warning.warningUser.member.user.id})<#else>${warning.warningUser.userId?c}</#if></#assign>
<#assign warnDate><@format_instant_date_time instant=warning.warning.warnDate/></#assign>

<#include "warnings_warn_entry_text">
<#if warning.warning.decayed>
<#assign decayDate><@format_instant_date_time instant=warning.warning.decayDate/></#assign>
 <#include "warnings_warn_is_decayed">
</#if>