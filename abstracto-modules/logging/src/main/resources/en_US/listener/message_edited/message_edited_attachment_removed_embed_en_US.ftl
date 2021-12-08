{
    "embeds": [
        {
            "imageUrl": "${imageUrl}",
            <#include "abstracto_color"/>,
            "description": "<@safe_include "messageEdited_attachment_removed_description"/>",
            "fields": [
                {
                    "name": "<@safe_include "messageDeleted_attachment_link_field_title"/>",
                    "value": "[<@safe_include "messageDeleted_attachment_link_display_text"/>](${imageUrl})"
                }
            ],
            "footer": {
                "text": "<@safe_include "messageDeleted_attachment_footer"/> #${counter}"
            }
        }
    ]
}