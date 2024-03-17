{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "ban_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "ban_log_banned_user_field_title"/>",
                    "value": "${bannedUser.userMention}"
                },
                {
                    "name": "<@safe_include "ban_log_banning_user_field_title"/>",
                    "value": "${banningMember.memberMention}"
                },
                {
                    "name": "<@safe_include "ban_log_reason_field_title"/>",
                    "value": "${reason?json_string}"
                }
                <#if deletionDuration?has_content>
                ,
                {
                    "name": "<@safe_include "ban_log_deletion_duration_field_title"/>",
                    "value": "${fmtDuration(deletionDuration)}"
                }
                </#if>
            ]
        }
    ]
}