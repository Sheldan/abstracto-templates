{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=memberInfo/>,
            <#include "abstracto_color">,
            "imageUrl":  "${memberInfo.user.effectiveAvatarUrl}",
            "fields": [
                {
                    <#include "member_user_name">
                    "name": "<@safe_include "showAvatar_response_embed_user_field_title"/>",
                    "value": "<@member_member_name member=memberInfo/>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "showAvatar_response_embed_image_field_title"/>",
                    "value": "[<@safe_include "showAvatar_response_embed_image_field_value_display"/>](${memberInfo.user.effectiveAvatarUrl})",
                    "inline": "true"
                }
            ]
        }
    ]
}