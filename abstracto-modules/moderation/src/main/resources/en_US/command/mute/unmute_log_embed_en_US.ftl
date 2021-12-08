<#include "full_member_info">
<#include "format_instant">
{
    "embeds": [
        {
            <#if unMutedUser?has_content>
            <#include "member_author">
            <@member_author member=unMutedUser/>,
            </#if>
            "title": {
                "title": "<@safe_include "unMute_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "unMute_log_unmuted_user_field_title"/>",
                    <#if unMutedUser?has_content>
                    "value": "<@full_member_info member=unMutedUser/>"
                    <#else>
                    "value": "<@safe_include "user_left_server"/> (${mute.mutedUser.userReference.id?c})"
                    </#if>
                },
                {
                    "name": "<@safe_include "mute_log_muting_user_field_title"/>",
                    <#if mutingUser?has_content>
                    "value": "<@full_member_info member=mutingUser/>"
                    <#else>
                    "value": "<@safe_include "user_left_server"/> (${mute.mutingUser.userReference.id?c})"
                    </#if>
                },
                <#if messageUrl??>
                {
                    "name": "<@safe_include "mute_log_mute_location_field_title"/>",
                    "value": "[Link](${messageUrl})"
                },
                </#if>
                {
                    "name": "<@safe_include "unMute_log_muted_since_field_title"/>",
                    "value": "<@format_instant_date_time instant=mute.muteDate/>"
                },
                {
                    "name": "<@safe_include "mute_log_mute_duration_field_title"/>",
                    "value": "${fmtDuration(muteDuration)}"
                },
                {
                    "name": "<@safe_include "mute_log_mute_reason_field_title"/>",
                    "value": "${mute.reason?json_string}"
                }
            ],
            "footer": {
                <#assign muteId=mute.muteId.id/>
                "text": "<@safe_include "mute_log_mute_id_footer"/>"
            },
            "timeStamp": "${unmuteDate}"
        }
    ]
}