{
    "embeds": [
        {
            "title": {
                <#assign title=title?json_string>
                "title": "<@safe_include "giveaway_winner_modmail_notification_title"/>"
            },
            <#include "abstracto_color">,
            <#if description?has_content><#assign description=description?json_string></#if>
            <#if benefactor?has_content><#assign benefactor=benefactor.memberMention/></#if>
            <#assign key=key/>
            "description": "<@safe_include "giveaway_winner_modmail_notification_description"/>"
        }
    ]
}