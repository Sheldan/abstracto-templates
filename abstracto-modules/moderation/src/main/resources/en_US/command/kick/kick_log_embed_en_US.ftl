{
    "embeds": [
        {
            <#include "user_detail">
            "title": {
                "title": "<@safe_include "kick_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "kick_log_kicked_user_field_title"/>",
                    "value": "<@user_detail user=kickedUser/>"
                },
                {
                    "name": "<@safe_include "kick_log_kicking_user_field_title"/>",
                    "value": "<@user_detail user=kickingUser/>"
                }
                <#if reason?has_content>
                ,
                {
                    "name": "<@safe_include "kick_log_reason_field_title"/>",
                    "value": "${reason?json_string}"
                }
                </#if>
            ]
        }
    ]
}