<#include "format_instant">
<#include "user_detail">
{
    "embeds": [
        {
            <#include "modmail_color">,
            <#assign user><@user_detail user=userDisplay/></#assign>
            "description": "<@safe_include "modmail_thread_header_embed_description"/>"
        }
    ]
}