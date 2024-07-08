{
    "embeds": [
        {
            <#include "user_author">
            <@user_detail_author user=userDisplay/>,
            "description": "<@safe_include "modmail_thread_created_description"/>",
            <#include "modmail_color">,
            "fields": [
                {
                    "name": "<@safe_include "modmail_thread_created_link_field_title"/>",
                    "value": "${createdChannel.asMention}"
                }
            ]
        }
    ]
}
