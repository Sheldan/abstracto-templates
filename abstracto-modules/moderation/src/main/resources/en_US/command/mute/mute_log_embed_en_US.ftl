<#include "full_member_info">
<#include "format_instant">
<#include "member_author">
{
    "embeds": [
        {
            <@member_author member=mutedUser/>,
            "title": {
                "title": "<@safe_include "mute_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "mute_log_muted_user_field_title"/>",
                    "value": "<@full_member_info member=mutedUser/>"
                },
                {
                    "name": "<@safe_include "mute_log_muting_user_field_title"/>",
                    "value": "<@full_member_info member=mutingUser/>"
                },
                {
                    "name": "<@safe_include "mute_log_mute_location_field_title"/>",
                    "value": "[${contextChannel.name?json_string}](${message.jumpUrl})"
                },
                {
                    "name": "<@safe_include "mute_log_mute_reason_field_title"/>",
                    "value": "${reason?json_string}"
                },
                {
                    "name": "<@safe_include "mute_log_mute_duration_field_title"/>",
                    "value": "${fmtDuration(muteDuration)}"
                },
                {
                    "name": "<@safe_include "mute_log_muted_until_field_title"/>",
                    "value": "<@format_instant_date_time instant=muteTargetDate/>"
                }
            ],
            "footer": {
                "text": "<@safe_include "mute_log_mute_id_footer"/>"
            },
            "timeStamp": "${muteDate}"
        }
    ]
}