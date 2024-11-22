<#include "format_instant">
{
    <#assign guildName=guild.name>
    <#if statsSince?has_content>
    <#assign sinceDate><@format_instant_long_date instant=statsSince/></#assign>
    </#if>
    "additionalMessage": "<@safe_include "downloadEmoteStats_response_embed_text"/>",
    "files": [
        {
            "fileName": "<@safe_include "downloadEmoteStats_file_name"/>",
            "fileContent": "<@safe_include "downloadEmoteStats_file_content"/>"
        }
    ]
}