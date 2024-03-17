{
    "embeds": [
        {
            <#include "full_member_info">
            <#include "abstracto_color">,
            "description":  "<@safe_include "profanityListener_report_embed_description"/>",
            "fields": [
                {
                    "name": "<@safe_include "profanityListener_report_embed_member_field_title"/>",
                    "value": "<@full_member_info member=profaneMessage.member/>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "profanityListener_report_embed_message_link_field_title"/>",
                    "value": "[${profaneMessage.channel.name?json_string}](${profaneMessage.jumpUrl?json_string})",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "profanityListener_report_embed_profanity_type_field_title"/>",
                    "value": "${profanityGroupKey?json_string}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "profanityListener_report_embed_message_content_field_title"/>",
                    "value": "${profaneMessage.contentRaw?json_string}",
                    "inline": "true"
                }
            ]
        }
    ]
<#if moderationActionComponents?size gt 0>,
    "buttons": [
    <#list moderationActionComponents as moderactionAction>
        {
            "label": "<@safe_include "moderation_action_${moderactionAction.action}_button_label"/>",
            "id": "${moderactionAction.componentId}",
            "buttonStyle": "danger",
            "metaConfig": {
                "persistCallback": false
            }
        }<#sep>,</#list>
    ]
</#if>
}