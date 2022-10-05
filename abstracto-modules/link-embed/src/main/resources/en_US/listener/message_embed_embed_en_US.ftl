{
    "embeds": [
        {
            <#if author??>
            <#include "user_author">
            <@user_author user=author/>
            <#else>
            <#include "deleted_user_author"/>
            </#if>,
            <#include "abstracto_color">,
            <#if embeddedMessage.content?has_content || embeddedMessage.embeds?size gt 0>
            "description": "${embeddedMessage.content?json_string}
            <#list embeddedMessage.embeds>
                <@safe_include "message_embed_embed_embeds_name"/>:
                <#items as embed><#assign embed=embed/>
                    <@safe_include "message_embed_embed_description"/>: <#if embed.description?has_content >${embed.description?json_string}</#if> <#if embed.imageUrl?has_content> <@safe_include "message_embed_embed_image_url"/>: ${embed.imageUrl} </#if>
                </#items>
            </#list>
            ",
            </#if>
            <#if embeddedMessage.attachments?size gt 0 && !embeddedMessage.attachments[0].spoiler>
            "imageUrl": "${embeddedMessage.attachments[0].proxyUrl}",
            <#elseif embeddedMessage.attachments?size = 0 && embeddedMessage.embeds?size gt 0 && embeddedMessage.embeds[0].cachedThumbnail??>
            "imageUrl": "${embeddedMessage.embeds[0].cachedThumbnail.proxyUrl}",
            <#elseif embeddedMessage.attachments?size = 0 && embeddedMessage.embeds?size gt 0 && embeddedMessage.embeds[0].cachedImageInfo??>
            "imageUrl": "${embeddedMessage.embeds[0].cachedImageInfo.proxyUrl}",
            </#if>
            "fields": [
                {
                  "name": "<@safe_include "message_embed_embed_quoted_by_field_title"/>",
                  <#assign user>${embeddingUser.asMention?json_string}</#assign>
                  <#assign channelName>${sourceChannel.name?json_string}</#assign>
                  <#assign messageLink>${embeddedMessage.messageUrl}</#assign>
                  "value": "<@safe_include "message_embed_embed_quoted_by_field_value"/>"
                }
                <#if embeddedMessage.referencedMessage??>
                ,
                {
                    <#assign referencedMessageLink=embeddedMessage.referencedMessage.messageUrl/>
                    <#assign repliedToAuthorMention>${r"<@"}${embeddedMessage.referencedMessage.author.authorId?c}${r">"}</#assign>
                    "name": "<@safe_include "message_embed_embed_referenced_message_field_title"/>",
                    "value": "<@safe_include "message_embed_embed_referenced_message_field_value"/>"
                }
                </#if>
            ],
            "timeStamp": "${embeddedMessage.timeCreated}"
        }
    ]
     <#if useButton>
    ,"buttons": [
        {
            "label": "<@safe_include "message_embed_button_delete"/>",
            "id": "${buttonConfigModel.buttonId}",
            "buttonStyle": "danger",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
    </#if>
    <#if embeddedMessage.attachments?size gt 0 && embeddedMessage.attachments[0].spoiler>
    ,"additionalMessage": "||${embeddedMessage.attachments[0].proxyUrl?json_string}||"
    </#if>
<#if referencedMessageId?has_content && mentionsReferencedMessage?has_content>
    ,"referencedMessageId": "${referencedMessageId?c}",
    "messageConfig": {
        "mentionsReferencedMessage": ${mentionsReferencedMessage?string('true', 'false')}
    }
</#if>
}