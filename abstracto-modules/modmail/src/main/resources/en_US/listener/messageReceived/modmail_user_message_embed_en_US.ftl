{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=member/>,
            "title": {
                "title": "<@safe_include "modmail_thread_user_message_title"/>"
            },
            <#include "modmail_color">,
            <#if postedMessage.contentRaw?has_content>
            "description": "${postedMessage.contentRaw?json_string}"
            <#else>
            "description": "<@safe_include "modmail_no_message_provided"/>"
            </#if>
            <#if attachedImageUrls?size gt 0>
            ,"imageUrl": "${attachedImageUrls[0]}"
            </#if>
            <#if remainingAttachments?size gt 0>
            ,"fields": [
                <#list remainingAttachments?keys as attachment><#assign attachment=attachment/>
                {
                    "name": "${attachment?json_string}",
                    "value": "[${attachment?json_string}](${remainingAttachments[attachment]?json_string})"
                }
                <#sep>,</#list>
                ]
            </#if>
        }
        <#if attachedImageUrls?size gt 1>
            <#assign attachmentCount>${attachedImageUrls?size}</#assign>
            ,<#list attachedImageUrls[1..] as attachment><#assign attachment=attachment/>
        {
            <#include "modmail_color">,
            <#assign currentIndex>${attachment?counter + 1}</#assign>
            "description": "<@safe_include "modmail_attachment_embed_description"/>",
            "imageUrl": "${attachment}"
        }
            <#sep>,</#list>
        </#if>
    ]
    <#if subscribers?size gt 0>
    ,"additionalMessage": "<#list subscribers as subscriber>${subscriber.asMention?json_string}<#sep>, </#list>"
    </#if>
}