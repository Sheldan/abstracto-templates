{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=member/>,
            "title": {
                "title": "<@safe_include "modmail_notification_message_title"/>"
            },
            <#include "modmail_color">,
            <#assign user><@member_user_name member=member/>(${member.user.id})</#assign>
            "description": "<@safe_include "modmail_notification_message_description"/>"
            <#if channel?has_content>,
            "fields": [
                {
                    "name": "<@safe_include "modmail_notification_field_title_channel"/>",
                    "value": "${channel.asMention}"
                }
            ]
            </#if>
        }
    ],
    "messageConfig": {
        "allowsRoleMention": true
    }
    <#if roles?size gt 0>
    ,"additionalMessage": "<#list roles as role>${role.role.asMention?json_string}<#sep>,</#list>"
    </#if>
}