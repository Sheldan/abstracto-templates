{
    "embeds": [
        {
            <#include "abstracto_color">,
            "metaConfig" : {
                "preventEmptyEmbed": "true"
            },
"description": "
<#if failedToJoin>
<@safe_include "remind_reminder_join_failed"/>
<#elseif selfJoin>
<@safe_include "remind_reminder_self_join"/>
<#else>
<#if joined>
<#include "format_instant">
<#assign targetDate><@format_instant_date_time instant=reminderDate/></#assign>
<@safe_include "remind_reminder_joined"/>
<#else>
<@safe_include "remind_reminder_left"/>
</#if>
</#if>"
        }
    ],
    "messageConfig": {
        "ephemeral": true
    }
}