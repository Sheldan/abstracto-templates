<#include "format_instant">
{
    "embeds": [
        {
            <#include "user_author">
            <@user_detail_author user=userDisplay/>,
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
                    <#if !reminderDisplay.userCommand><#assign messageLink=reminderDisplay.message.jumpUrl/></#if>
                    <#assign joined=reminderDisplay.joined/>
                    <#assign joinedText><#if joined><@safe_include "reminder_joined_text"/></#if></#assign>
                    "name": "<@safe_include "reminders_reminder_field_title"/>",
                    <#if reminderDisplay.text?has_content>
                        <#assign reminderText=reminderDisplay.text/>
                        "value": "<@safe_include "reminders_due_on"/>"
                    <#else>
                        "value": "<@safe_include "reminders_no_text_due_on"/>"
                    </#if>
                }
                <#sep>,
                </#list>
            ]
            </#if>
        }
    ]
}