{
    "embeds": [
        {
            <#assign userText>${user.name} (${user.userMention}: ${user.id?c})</#assign>
            "description": "<@safe_include "user_joined_text"/>",
            <#include "abstracto_color"/>
        }
    ]
}