<#include "format_instant">
<#assign decayed=warning.decayed/>
<#assign warnId=warning.warnId/>
<#assign reason=warning.reason/>
<#assign warnedUserText><#if warning.warnedUser.memberMention??>${warning.warnedUser.memberMention}(${warning.warnedUser.userId})<#else>${warning.warnedUser.userId?c}</#if></#assign>
<#assign warningUserText><#if warning.warningUser.memberMention??>${warning.warningUser.memberMention}(${warning.warnedUser.userId})<#else>${warning.warningUser.userId?c}</#if></#assign>
<#assign warnDate><@format_instant_date_time instant=warning.warnDate/></#assign>

<#include "warnings_warn_entry_text">

<#if decayed>
<#assign decayDate><@format_instant_date_time instant=warning.decayDate/></#assign>
 <#include "warnings_warn_is_decayed">
</#if>