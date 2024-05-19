{
    "embeds": [
        {
            <#include "abstracto_color">,
            "imageUrl":  "${avatarUrl}",
            "fields": [
                {
                    "name": "<@safe_include "showAvatar_response_embed_image_field_title"/>",
                    "value": "[<@safe_include "showAvatar_response_embed_image_field_value_display"/>](${avatarUrl})",
                    "inline": "true"
                }
            ]
        }
    ]
}