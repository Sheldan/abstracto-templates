{
    "embeds": [
        {
            <#assign id>${reminder.id}</#assign>
            <#include "member_author">
            <#include "member_avatar">
            <@member_display_author member=memberDisplay/>,
            <#include "abstracto_color">,
            <#if message?has_content>
                <#assign messageUrl>${message.jumpUrl}</#assign>
                "description": "<@safe_include "remind_reminding_description_text"/>"
            <#else>
                <#assign reminderText=remindText?json_string>
                "description": "<@safe_include "remind_reminding_description_slash_text"/>"
            </#if>

        }
    ],
    "additionalMessage": "${memberDisplay.memberMention?json_string}",
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
}