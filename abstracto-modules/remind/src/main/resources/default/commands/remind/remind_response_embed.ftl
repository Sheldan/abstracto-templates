<#include "format_instant">
{
    "embeds": [
        {
            <#assign id>${reminder.id}</#assign>
            <#include "user_author">
            <@user_detail_author user=userDisplay/>,
            <#include "abstracto_color">,
            <#assign reminderTargetDate><@format_instant_date_time instant=reminder.targetDate/></#assign>
            <#if message?has_content>
                <#assign messageUrl>${message.jumpUrl}</#assign>
                "description": "<@safe_include "remind_reminding_description_text"/>"
            <#else>
                <#if remindText?has_content>
                    <#assign reminderText=remindText?json_string>
                    "description": "<@safe_include "remind_reminding_description_slash_text"/>"
                <#else>
                    "description": "<@safe_include "remind_reminding_description_slash_no_text"/>"
                </#if>
            </#if>

        }
    ]
<#if !reminder.userCommand>,
    "additionalMessage": "${userDisplay.userMention?json_string}"
</#if>
<#if joinButtonId?has_content>,
    "buttons": [
        {
            "label": "<@safe_include "remind_reminder_join_button_label"/>",
            "id": "${joinButtonId}",
            "buttonStyle": "secondary",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
</#if>
}