{
    "embeds": [
        {
            <#assign user>${user.name}#${user.discriminator} (${user.id})</#assign>
            "description": "<@safe_include "user_left_text"/>",
            <#include "abstracto_color"/>
        }
    ]
}