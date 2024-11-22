<#include "user_detail">
{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "modmail_notification_message_title"/>"
            },
            <#include "modmail_color">,
            <#assign user><@user_detail user=userDisplay/></#assign>
            <#assign appeal=appeal>
            "description": "<@safe_include "modmail_notification_message_description"/><#if appeal> <@safe_include "modmail_notification_message_description_appeal_suffix"/></#if>"
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