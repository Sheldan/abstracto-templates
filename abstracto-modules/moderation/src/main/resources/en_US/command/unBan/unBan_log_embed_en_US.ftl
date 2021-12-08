{
    "embeds": [
        {
            <#include "user_detail">
            <#include "full_member_info">
            "title": {
                "title": "<@safe_include "unBan_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "unBan_log_un_banned_user_field_title"/>",
                    "value": "<@user_detail user=bannedUser/>"
                },
                {
                    "name": "<@safe_include "unBan_log_un_banning_user_field_title"/>",
                    "value": "<@full_member_info member=unBanningMember/>"
                }
            ]
        }
    ]
}