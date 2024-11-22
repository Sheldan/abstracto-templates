{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "showExternalTrackedEmote_response_embed_title"/>"
            },
            <#include "statistic_color">,
            "fields": [
                {
                    "name": "<@safe_include "showExternalTrackedEmote_response_embed_emote_name_field_title"/>",
                    "value": "${emoteName}"
                },
                {
                    "name": "<@safe_include "showExternalTrackedEmote_response_embed_emote_id_field_title"/>",
                    "value": "${trackedEmoteId.id?c}"
                },
                {
                    "name": "<@safe_include "showExternalTrackedEmote_response_embed_link_field_title"/>",
                    "value": "[<@safe_include "showExternalTrackedEmote_response_embed_emote_link_field_alt_text"/>](${externalUrl})"
                }
            ],
            "imageUrl": "${externalUrl}"
        }
    ]
}