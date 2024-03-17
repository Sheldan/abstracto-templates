{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "warn_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "warn_log_warned_user_field_title"/>",
                    "value": "${warnedMember.memberMention}"
                },
                <#if warningMember?has_content>
                {
                    "name": "<@safe_include "warn_log_warning_user_field_title"/>",
                    "value": "${warningMember.memberMention}"
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