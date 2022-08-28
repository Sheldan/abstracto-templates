{
    "embeds": [
        {
            <#include "member_author">
            <#include "member_avatar">
            <@member_display_author member=memberNameDisplay/>,
            <#include "abstracto_color">,
            "description": "<@safe_include "remind_reminder_description"/>",
            "fields": [
                {
                    "name": "<@safe_include "remind_reminder_duration_field_title"/>",
                    "value": "${fmtDuration(duration)}"
                },
                {
                    "name": "<@safe_include "remind_reminder_note_field_title"/>",
                    "value": "${reminder.text?json_string}"
                },
                {
                    "name": "<@safe_include "remind_reminder_link_field_title"/>",
                    "value": "[<@safe_include "remind_reminder_link_content_display_text"/>](${messageUrl})"
                }
            ]
        }
    ],
<#assign participantsMentions><#list reminderParticipants as participant>${participant.memberMention}<#sep>, </#list></#assign>
    "additionalMessage": "${memberNameDisplay.memberMention?json_string} 🔔

${participantsMentions}
"
}