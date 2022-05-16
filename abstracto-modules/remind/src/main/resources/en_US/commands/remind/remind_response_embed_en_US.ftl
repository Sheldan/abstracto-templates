{
    "embeds": [
        {
            <#assign id>${reminder.id}</#assign>
            <#include "member_author">
            <@member_author member=member/>,
            <#include "abstracto_color">,
            <#if message?has_content>
                <#assign messageUrl>${message.jumpUrl}</#assign>
                "description": "<@safe_include "remind_reminding_description_text"/>"
            <#else>
                "description": "<@safe_include "remind_reminding_description_slash_text"/>"
            </#if>

        }
    ],
    "additionalMessage": "${member.asMention?json_string}"
}