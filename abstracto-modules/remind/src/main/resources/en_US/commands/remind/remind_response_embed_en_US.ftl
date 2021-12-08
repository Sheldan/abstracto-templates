{
    "embeds": [
        {
            <#assign id>${reminder.id}</#assign>
            <#assign messageUrl>${message.jumpUrl}</#assign>
            <#include "member_author">
            <@member_author member=member/>,
            <#include "abstracto_color">,
            "description": "<@safe_include "remind_reminding_description_text"/>"
        }
    ],
    "additionalMessage": "${member.asMention?json_string}"
}