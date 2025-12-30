{
    "components": [
        {
            <#assign userFound=authorMember?? || authorUser??>
            <#assign emote>${starLevelEmote}</#assign>
            <#assign count>${starCount}</#assign>
            <#assign messageId>${message.messageId?c}</#assign>
            <#assign userText><#if authorMember??>${authorMember.name}<#elseif authorUser??>${authorUser.name}<#else><@safe_include "delete_user_name"/></#if></#assign>
            <#assign userAvatar><#if authorMember??>${authorMember.avatarUrl}<#elseif authorUser??>${authorUser.avatarUrl}</#if></#assign>
            <#assign userComponent>
                "type": "textDisplay",
                <#if channel?has_content>
                    <#assign channelMention>${channel.asMention?json_string}</#assign>
                    "content": "<@safe_include "starboard_post_embed_additional_message"/>"
                <#else>
                    <#assign channelMention>${sourceChannelId?c}</#assign>
                    "content": "<@safe_include "starboard_post_embed_additional_message"/>"
                </#if>
            </#assign>
            <#if userFound>
                "type": "section",
                "components": [
                    {
                        ${userComponent}
                    }
                ],
                "accessory": {
                    "type": "thumbnail",
                    "url": "${userAvatar}"
                }
            <#else>
                ${userComponent}
            </#if>
        }
        ,{
            "type": "container",
            <#include "starboard_post_container_color">
            "components": [
                <#assign hasContent=false>
                <#if message.content?has_content>
                    <#assign hasContent=true>
                {
                    "type": "textDisplay",
                    "content": "${message.content?json_string}"
                }
                </#if>
            <#list message.embeds as embed>
                <#if embed.description?has_content && !((embed.cachedImageInfo?has_content && embed.cachedImageInfo.proxyUrl?has_content) || (embed.cachedThumbnail?has_content && embed.cachedThumbnail.proxyUrl?has_content))>
                    <#assign hasContent=true>
                    {
                        "type": "textDisplay",
                        "content": "${embed.description?json_string}"
                    }
                <#elseif embed.description?has_content && (embed.cachedImageInfo?has_content && embed.cachedImageInfo.proxyUrl?has_content && embed.cachedImageInfo.width gt 0)
                || (embed.cachedThumbnail?has_content && embed.cachedThumbnail.proxyUrl?has_content && embed.cachedThumbnail.width gt 0)>
                <#assign hasContent=true>
                ,{
                    "type": "section",
                    "components": [
                        {
                            "type": "textDisplay",
                            "content": "${embed.description?json_string}"
                        }
                    ]
                    ,"accessory": {
                        "type": "thumbnail",
                        "url": "${(embed.cachedImageInfo.proxyUrl)!embed.cachedThumbnail.proxyUrl}"
                    }
                }
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
            <#if message.attachments?size gt 0>
            <#list message.attachments?filter(x -> x.width gt 0)>
                <#assign hasContent=true>
                ,{
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
                "content": "<@safe_include "starboard_post_embed_no_content"/>"
                }
            </#if>
            ]
        },
        {
            "type": "actionRow",
            "actionRowItems": [
                {
                    "type": "button",
                    "label": "<#include "starboard_post_embed_go_to_post_title">",
                    "url": "${message.messageUrl}",
                    "buttonStyle": "link"
                }
            ]
        }
    ],
    "messageConfig": {
        "allowsUserMention": false,
        "useComponentsV2": true
    }
}