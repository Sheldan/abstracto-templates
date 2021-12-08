{
    "embeds": [
        {
            <#include "abstracto_color">,
            <#assign messageLink=reportedMessage.messageUrl>
            "description" : "<@safe_include "reactionReport_notification_embed_description"/>",
            "fields": [
                {
                    "name": "<@safe_include "reactionReport_notification_embed_report_counter_field_title"/>",
                    "value": "${reportCount}"
                }
            ]
        }
    ]
}