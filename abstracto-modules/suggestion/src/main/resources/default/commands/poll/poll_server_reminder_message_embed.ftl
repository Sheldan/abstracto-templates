<#include "format_instant">
{
    "embeds": [
        {
            <#include "abstracto_color"/>,
            <#assign pollId=pollId>
            <#assign description=description>
            "description": "<@safe_include "poll_reminder_job_notification_message_description"/><#list topOptions as option><#assign option=option><@safe_include "poll_message_option_display_always"/><#sep>\n</#list>"
        }
    ],
    "buttons": [
        {
            "label": "<@safe_include "poll_server_reminder_job_button_jump"/>",
            "url": "${messageLink?json_string}",
            "buttonStyle": "link",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
}