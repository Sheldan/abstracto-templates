{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=member/>,
            "description": "<@safe_include "messageDeleted_description_text"/>",
            <#include "abstracto_color"/>,
            "fields": [
                {
                    "name": "<@safe_include "messageDeleted_original_message_field_title"/>",
                    "value": "${cachedMessage.content?json_string}"
                },
                {
                    "name": "<@safe_include "messageDeleted_message_link_field_title"/>",
                    "value": "[${channel.name?json_string}](${cachedMessage.messageUrl})"
                }
            ]
        }
    ]
}