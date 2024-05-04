{
    "embeds": [
        {
            <#include "full_member_info">
            <#include "moderation_action_color">,
            <#assign newLevel=newLevel>
            <#assign oldLevel=oldLevel>
            <#assign newPoints=newPoints>
            <#assign oldPoints=oldPoints>
            <#assign memberMention=member.memberMention>
            "description" :"<@safe_include "infraction_level_notification_description"/>"
        }
    ]
}