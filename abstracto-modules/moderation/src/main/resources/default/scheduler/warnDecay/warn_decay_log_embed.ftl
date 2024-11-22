<#include "format_instant">
{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "warnDecay_title"/>"
            },
            <#include "moderation_action_color">,
            "description": "<#list warnings as warning><#assign warning=warning/>
<#if warning.warnedMember??><#assign warnedUser>${warning.warnedMember.asMention?json_string} (${warning.warnedMember.idLong?c})</#assign><#else><#assign warnedUser> ${warning.warnedUser.userId?c}</#assign></#if> <#if warning.warningMember??><#assign warningUser> ${warning.warningMember.asMention?json_string} (${warning.warningMember.idLong?c})</#assign><#else><#assign warningUser>${warning.warningUser.userId?c}</#assign></#if> <#assign warnDate><@format_instant_date_time instant=warning.warning.warnDate/></#assign><#assign warnReason=warning.warning.reason/> <@safe_include "warnDecay_log_warn_entry"/>
<#else>
<@safe_include "warnDecay_log_no_warnings"/>
</#list>"
        }
    ]
}