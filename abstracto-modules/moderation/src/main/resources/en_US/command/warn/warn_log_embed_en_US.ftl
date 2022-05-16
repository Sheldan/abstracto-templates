{
    "embeds": [
        {
            <#include "full_member_info">
            <#include "member_author">
            <@member_author member=warnedMember/>,
            "title": {
                "title": "<@safe_include "warn_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "warn_log_warned_user_field_title"/>",
                    "value": "<@full_member_info member=warnedMember/>"
                },
                <#if member?has_content>
                {
                    "name": "<@safe_include "warn_log_warning_user_field_title"/>",
                    "value": "<@full_member_info member=member/>"
                },
                </#if>
                <#if message?has_content>
                {
                    "name": "<@safe_include "warn_log_warn_location_field_title"/>",
                    "value": "[${channel.name?json_string}](${message.jumpUrl})"
                },
                </#if>
                {
                    "name": "<@safe_include "warn_log_warn_reason_field_title"/>",
                    "value": "${reason?json_string}"
                }
            ],
            "footer": {
                "text": "<@safe_include "warn_log_warn_id_footer"/> #${warnId}"
            }
        }
    ]
}