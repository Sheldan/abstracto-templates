{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=member/>,
            <#include "success_color">,
            <#assign userMention><@member_user_name member=member/></#assign>
            "description" :"<@safe_include "myWarnings_with_decay_embed_description"/>"
        }
    ]
}