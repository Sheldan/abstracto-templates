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
                    <#assign id>${reminderDisplay.id}</#assign>
                    <#assign reminderTargetDate><@format_instant_date_time instant=reminderDisplay.targetDate/></#assign>
                    <#assign reminderText=reminderDisplay.text/>
                    <#assign messageLink=reminderDisplay.message.jumpUrl/>
                    <#assign joined=reminderDisplay.joined/>
                    <#assign joinedText><#if joined><@safe_include "reminder_joined_text"/></#if></#assign>
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