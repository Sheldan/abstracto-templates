{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "poll_quick_evaluation_title"/>"
            },
            <#include "abstracto_color">,
            "description": "<#list options as option><#assign option=option><@safe_include "poll_message_option_display_always"/><#sep>\n</#list>"
        }
    ],
    "referencedMessageId": "${pollMessageId?c}"
}