{
    "embeds": [
        {
            <#include "user_author">
            <@user_detail_author user=userDisplay/>,
            <#include "abstracto_color">,
            <#assign reminderId=reminderDisplay.id>
            "description": "<@safe_include "remind_reminder_description"/>",
            "fields": [
                {
                    "name": "<@safe_include "remind_reminder_duration_field_title"/>",
                    "value": "${fmtDuration(duration)}"
                }
                <#if reminderDisplay.text?has_content>
                ,{
                    "name": "<@safe_include "remind_reminder_note_field_title"/>",
                    "value": "${reminderDisplay.text?json_string}"
                }
                </#if>
                <#if messageUrl?has_content>
                ,{
                    "name": "<@safe_include "remind_reminder_link_field_title"/>",
                    "value": "[<@safe_include "remind_reminder_link_content_display_text"/>](${messageUrl})"
                }
                </#if>
            ]<#if !reminderDisplay.userCommand>,
            "footer": {
                "text": "<@safe_include "remind_reminder_snooze_hint"/>"
            }
            </#if>
        }
    ]
<#if !reminderDisplay.userCommand>,
<#assign participantsMentions><#if reminderParticipants?has_content><#list reminderParticipants as participant>${participant.memberMention}<#sep>, </#list></#if></#assign>
    "additionalMessage": "${userDisplay.userMention?json_string} 🔔

${participantsMentions}
"
</#if>
}