{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=moderator/>,
            "title": {
                "title": "<@safe_include "modmail_thread_staff_message_title"/>"
            },
            <#include "modmail_color">
            <#if text?has_content>
            ,"description": "${text?json_string}"
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
}