{
    "embeds": [
        {
            "description": "<@safe_include "poll_server_close_message_description"/>"
            <#if text?has_content>,
            "fields": [
                {
                "name": "<@safe_include "poll_server_close_message_embed_text_field_title"/>",
                "value": "${text?json_string}"
                }
            ]
            </#if>
        }
    ],
    "referencedMessageId": "${pollMessageId?c}"
}