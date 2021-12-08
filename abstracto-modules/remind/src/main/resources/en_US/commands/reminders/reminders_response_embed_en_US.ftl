<#include "format_instant">
{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=member/>,
            <#include "abstracto_color">,
            "title": {
                "title": "<@safe_include "reminders_reminders_embed_title"/>"
            },
            <#if reminders?size = 0>
            "description": "<@safe_include "reminders_no_reminders"/>"
            <#else>
            "fields": [
                <#list reminders as reminderDisplay><#assign reminderDisplay=reminderDisplay/>
                {
                    <#assign id>${reminderDisplay.reminder.id}</#assign>
                    <#assign reminderTargetDate><@format_instant_date_time instant=reminderDisplay.reminder.targetDate/></#assign>
                    <#assign reminderText=reminderDisplay.reminder.text/>
                    <#assign messageLink=reminderDisplay.message.jumpUrl/>
                    "name": "<@safe_include "reminders_reminder_field_title"/>",
                    "value": "<@safe_include "reminders_due_on"/>"
                }
                <#sep>,
                </#list>
            ]
            </#if>
        }
    ]
}