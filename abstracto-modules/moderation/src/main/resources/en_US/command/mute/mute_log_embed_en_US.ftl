<#include "full_member_info">
<#include "format_instant">
<#include "member_author">
{
    "embeds": [
        {
            <@member_author member=mutedUser/>,
            "title": {
            <#if durationChanged>
                "title": "<@safe_include "mute_log_title_mute_changed"/>"
            <#elseif muteEnded>
                "title": "<@safe_include "mute_log_title_unmuted"/>"
            <#elseif muted>
                "title": "<@safe_include "mute_log_title_muted"/>"
            </#if>

            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "mute_log_muted_user_field_title"/>",
                    "value": "<@full_member_info member=mutedUser/>"
                },
                <#if mutingUser?has_content>
                {
                    <#if muted>
                        "name": "<@safe_include "mute_log_muting_user_field_title"/>",
                    <#elseif muteEnded>
                        "name": "<@safe_include "mute_log_unmuting_user_field_title"/>",
                    </#if>
                    "value": "<@full_member_info member=mutingUser/>"
                }
                </#if>
                <#if reason?has_content>,
                {
                    "name": "<@safe_include "mute_log_mute_reason_field_title"/>",
                    "value": "${reason?json_string}"
                }
                </#if>
                <#if muted && !durationChanged>,
                {
                    "name": "<@safe_include "mute_log_mute_duration_field_title"/>",
                    "value": "${fmtDuration(muteDuration)}"
                },
                {
                    "name": "<@safe_include "mute_log_muted_until_field_title"/>",
                    "value": "<@format_instant_date_time instant=muteTargetDate/>"
                }
                </#if>
                <#if durationChanged>,
                {
                    "name": "<@safe_include "mute_log_new_mute_time_field_title"/>",
                    "value": "<@format_instant_date_time instant=muteTargetDate/>"
                },
                {
                    "name": "<@safe_include "mute_log_old_mute_time_field_title"/>",
                    "value": "<@format_instant_date_time instant=oldMuteTargetDate/>"
                }
                </#if>
            ]
        }
    ]
}