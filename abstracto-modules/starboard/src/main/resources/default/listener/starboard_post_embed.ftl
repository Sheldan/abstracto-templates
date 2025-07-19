{
    "components": [
        {
            <#assign userFound=author??>
            <#assign emote>${starLevelEmote}</#assign>
            <#assign count>${starCount}</#assign>
            <#assign messageId>${message.messageId?c}</#assign>
            <#assign userText><#if author??><#include "user_user_name"><@user_user_name user=author/><#else><@safe_include "delete_user_name"/></#if></#assign>
            <#assign userAvatar><#if author??>${author.effectiveAvatarUrl}</#if></#assign>
            <#assign userComponent>
                "type": "textDisplay",
                <#if channel?has_content>
                    <#assign channelMention>${channel.asMention?json_string}</#assign>
                    "content": "<@safe_include "starboard_post_embed_additional_message"/> ${(starCount >= 15)?string('yes', 'no')} ${(starCount >= 15)?string('yes', 'no')} ${(starCount >= 10)?string('yes', 'no')} ${(starCount >= 2)?string('yes', 'no')} ${(starCount >= 1)?string('yes', 'no')}"
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
                        }</#items>
                    ]
                }<#sep>,</#list>
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