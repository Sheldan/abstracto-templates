{
    "embeds": [
        {
            <#include "abstracto_color">,
            "title": {
                "title": "${title?json_string}"
            },
            "description": "${summary?json_string}"
        }
    ],
    "buttons": [
        {
            "label": "<@safe_include "wikipediaArticleSummary_jump_link"/>",
            "url": "${fullURL?json_string}",
            "buttonStyle": "link",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
}