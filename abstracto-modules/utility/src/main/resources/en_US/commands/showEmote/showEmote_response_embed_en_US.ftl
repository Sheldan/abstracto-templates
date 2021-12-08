{
    "embeds": [
        {
            <#include "abstracto_color">,
            "imageUrl":  "${emote.imageUrl}",
            "fields": [
                {
                    "name": "<@safe_include "showEmote_response_embed_emote_name_field_title"/>",
                    "value": "${emote.name}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "showEmote_response_embed_emote_link_field_title"/>",
                    "value": "${emote.imageUrl}",
                    "inline": "true"
                }
            ]
        }
    ]
}