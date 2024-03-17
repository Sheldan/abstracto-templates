{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "unBan_log_title"/>"
            },
            <#include "moderation_action_color">,
            "fields": [
                {
                    "name": "<@safe_include "unBan_log_un_banned_user_field_title"/>",
                    "value": "${bannedUser.userMention}"
                },
                {
                    "name": "<@safe_include "unBan_log_un_banning_user_field_title"/>",
                    "value": "${unBanningMember.memberMention}"
                }
            ]
        }
    ]
}