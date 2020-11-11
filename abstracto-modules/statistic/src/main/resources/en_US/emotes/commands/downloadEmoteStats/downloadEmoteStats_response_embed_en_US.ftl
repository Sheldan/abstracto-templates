{
<#assign guildName=guild.name>
<#if statsSince?has_content>
<#assign sinceDate>${formatDate(statsSince, "yyyy-MM-dd")}</#assign>
</#if>
    "additionalMessage": "<@safe_include "downloadEmoteStats_response_embed_text"/>"
}