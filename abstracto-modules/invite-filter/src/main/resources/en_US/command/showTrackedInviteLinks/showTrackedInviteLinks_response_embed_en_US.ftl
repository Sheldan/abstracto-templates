{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "tracked_invite_links_embed_title"/>"
            },
            <#include "success_color">,
            "description": "<#list inviteLinks as link><#assign link=link/>
<#assign linkText>${link.serverName}</#assign>
<#assign linkUses>${link.uses}</#assign>
<@safe_include "tracked_invite_links_link_display"/><#else><@safe_include "tracked_invite_links_no_links"/>
</#list>"
        }
    ]
}