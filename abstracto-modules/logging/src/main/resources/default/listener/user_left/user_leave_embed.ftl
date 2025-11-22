{
    "embeds": [
        {
            <#include "user_detail">
            <#assign userText><@user_detail user=user/></#assign>
            "description": "<@safe_include "user_left_text"/>",
            <#include "abstracto_color"/>
        }
    ]
}