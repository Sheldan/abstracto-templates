<#include "format_instant">
{
    "embeds": [
        {
            <#include "user_detail">
            "title": {
                "title": "<@safe_include "modmail_closing_notification_title"/>"
            },
            <#include "modmail_color">,
            <#assign messageCount>${messageCount}</#assign>
            <#assign user><#if user??><@user_detail user=user/><#else>${userId}</#if></#assign>
            <#assign closingUserDescription><@member_user_name member=closingMember/> (${closingMember.idLong?c})</#assign>
            <#assign startDate><@format_instant_date_time instant=startDate/></#assign>
            <#assign duration>${fmtDuration(duration)}</#assign>
            <#assign closedSilently=silently>
            "description": "<@safe_include "close_closing_description"/>"
        }
    ]
}
