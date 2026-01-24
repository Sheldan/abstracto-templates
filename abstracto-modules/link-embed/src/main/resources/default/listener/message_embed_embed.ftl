{
    "components": [
        {
            <#assign userFound=author??>
            <#include "user_user_name">
            <#assign userText><#if author??><@user_user_name user=author/><#else><@safe_include "delete_user_name"/></#if></#assign>
            <#include "member_user_name">
            <#assign embeddingUserText><@member_user_name member=embeddingUser/></#assign>
            <#assign userAvatar><#if author??>${author.effectiveAvatarUrl}</#if></#assign>
            <#if userFound>
                "type": "section",
                "components": [
                    {
                        "type": "textDisplay",
                        "content": "<@safe_include "message_embed_meta_info"/>"
                    }
                ],
                "accessory": {
                    "type": "thumbnail",
                    "url": "${userAvatar}"
                }
            <#else>
                "type": "textDisplay",
                "content": "<@safe_include "message_embed_meta_info"/>"
            </#if>
        },
        {
            "type": "container",
            "components": [
            <#assign hasContent=false>
            <#if embeddedMessage.content?has_content>
                <#assign hasContent=true>
                {
                    "type": "textDisplay",
                    "content": "${embeddedMessage.content?json_string}"
                }
            </#if>
            <#list embeddedMessage.embeds as embed>
                <#if embed.description?has_content>
                 <#if embeddedMessage.content?has_content>,</#if>
                    <#if (embed.cachedImageInfo?has_content && embed.cachedImageInfo.proxyUrl?has_content) || (embed.cachedThumbnail?has_content && embed.cachedThumbnail.proxyUrl?has_content)>
                        {
                        <#assign hasContent=true>
                            "accessory": {
                                "type": "thumbnail",
                                "url": "${(embed.cachedImageInfo.proxyUrl)!embed.cachedThumbnail.proxyUrl}"
                            },
                            "type": "section",
                            "components": [
                                {
                                    "type": "textDisplay",
                                    "content": "${embed.description?json_string}"
                                }
                            ]
                        }
                    <#else>
                        {
                            "type": "textDisplay",
                            "content": "${embed.description?json_string}"
                        }
                    </#if>
                    <#assign hasContent=true>
                <#elseif (embed.cachedImageInfo?has_content && embed.cachedImageInfo.proxyUrl?has_content && embed.cachedImageInfo.width gt 0)
                || (embed.cachedThumbnail?has_content && embed.cachedThumbnail.proxyUrl?has_content && embed.cachedThumbnail.width gt 0)>
                    <#assign hasContent=true>
                {
                    "type": "mediaGallery",
                    "images": [
                        {
                            "url": "${(embed.cachedImageInfo.proxyUrl)!embed.cachedThumbnail.proxyUrl}"
                        }
                    ]
                }
                </#if>
            </#list>
            <#if embeddedMessage.attachments?size gt 0>
                <#list embeddedMessage.attachments?filter(x -> x.width gt 0)>
                <#if hasContent>,</#if>{
                    <#assign hasContent=true>
                    "type": "mediaGallery",
                    "images": [
                        <#items as attachment>
                        {
                            "url": "${attachment.proxyUrl}"
                        }<#sep>,</#items>
                    ]
                }</#list>
            </#if>
        <#if hasContent==false>
            {
            "type": "textDisplay",
            "content": "<@safe_include "message_embed_no_content"/>"
            }
        </#if>
            ]
        }
        ,{
            "type": "actionRow",
            "actionRowItems": [
                    {
                        <#assign channelName>${sourceChannel.name?json_string}</#assign>
                        <#assign messageLink>${embeddedMessage.messageUrl}</#assign>
                        "type": "button",
                        "label": "<#include "message_embed_original_button_label">",
                        "url": "${messageLink}",
                        "buttonStyle": "link"
                    }
                <#if useButton>
                    ,{
                        "label": "<@safe_include "message_embed_button_delete"/>",
                        "id": "${buttonConfigModel.buttonId}",
                        "buttonStyle": "danger",
                        "type": "button",
                        "metaConfig": {
                            "persistCallback": false
                        }
                    }
                </#if>
                <#if embeddedMessage.referencedMessage??>
                    ,
                    {
                        "type": "button",
                        <#assign referencedMessageLink=embeddedMessage.referencedMessage.messageUrl/>
                        "label": "<#include "message_embed_referenced_button_label">",
                        "url": "${referencedMessageLink}",
                        "buttonStyle": "link"
                    }
                </#if>
            ]
        }
    ]
<#if referencedMessageId?has_content && mentionsReferencedMessage?has_content>
    ,"referencedMessageId": "${referencedMessageId?c}"
</#if>
    ,"messageConfig": {
        "allowsUserMention": false,
        "allowsRoleMention": false,
        "allowsEveryoneMention": false,
        "useComponentsV2": true
        <#if referencedMessageId?has_content && mentionsReferencedMessage?has_content>
        ,"mentionsReferencedMessage": ${mentionsReferencedMessage?string('true', 'false')}
        </#if>
    }
}