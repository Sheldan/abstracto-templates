{
    "embeds": [
        {
            <#include "user_author">
            <@user_author user=author/>,
            <#include "modmail_color">
            <#if message.embeds[0].description?has_content>
            ,"description": "${message.embeds[0].description?json_string}"
            </#if>
            <#if message.embeds?size gt 0 && message.embeds[0].image??>
                ,"imageUrl": "${message.embeds[0].image.proxyUrl}"
            </#if>
            <#if message.embeds?size gt 0 && message.embeds[0].fields?size gt 0>
                ,"fields": [
                <#list message.embeds[0].fields as field><#assign field=field/>
                    {
                    "name": "${field.name?json_string}",
                    "value": "${field.value?json_string}"
                    }
                    <#sep>,</#list>
                ]
            </#if>
            ,"timeStamp": "${message.timeCreated}"
        }
        <#if message.embeds?size gt 1>
        <#assign attachmentCount>${message.embeds?size}</#assign>
            <#list message.embeds[1..] as embed><#assign embed=embed/>
            <#if embed.image?? && embed.image.proxyUrl??>
        ,{
            <#include "modmail_color">,
            <#assign currentIndex>${embed?counter + 1}</#assign>
            "description": "<@safe_include "modmail_attachment_embed_description"/>",
            "imageUrl": "${embed.image.proxyUrl}"
        }
            </#if></#list>
        </#if>
    ]
    <#if modMailMessage.anonymous>
    ,"additionalMessage": "<@safe_include "modmail_anonymous_message_note"/>"
    </#if>
}
