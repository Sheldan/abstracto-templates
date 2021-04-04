{
  <#if author??>
    <#include "user_author">
    <@user_author user=author/>
  <#else>
    <@safe_include "deleted_user_author"/>
  </#if>,
  <#include "abstracto_color">,
  <#if message.content?has_content || message.embeds?size gt 0>
   "description": "${message.content?json_string}
   <#list message.embeds>
        <@safe_include "starboard_post_embed_embeds_name"/>:
        <#items as embed>
            <#if embed.description??> <@safe_include "starboard_post_embed_description"/>: ${embed.description?json_string} </#if> <#if embed.imageUrl?has_content> <@safe_include "starboard_post_embed_image_url"/>: ${embed.imageUrl} </#if>
        </#items>
   </#list>
   ",
  </#if>
  <#assign emote>${starLevelEmote}</#assign>
  <#assign count>${starCount}</#assign>
  <#assign messageId>${message.messageId?c}</#assign>
  <#if channel?has_content>
  <#assign channelMention>${channel.asMention?json_string}</#assign>
  "additionalMessage": "<@safe_include "starboard_post_embed_additional_message"/>"
  <#else>
  <#assign channelMention>${sourceChannelId?c}</#assign>
  ,"additionalMessage": "<@safe_include "starboard_post_embed_additional_message"/>"
  </#if>
  <#if message.attachments?size gt 0>
  ,"imageUrl": "${message.attachments[0].proxyUrl}"
  <#elseif message.attachments?size = 0 && message.embeds?size gt 0 && message.embeds[0].cachedThumbnail??>
  ,"imageUrl": "${message.embeds[0].cachedThumbnail.proxyUrl}"
  <#elseif message.attachments?size = 0 && message.embeds?size gt 0 && message.embeds[0].cachedImageInfo??>
  ,"imageUrl": "${message.embeds[0].cachedImageInfo.proxyUrl}"
  </#if>
  ,"fields": [
    {
      "name": "<@safe_include "starboard_post_embed_original_field_title"/>"
      <#if channel?has_content>
      ,"value": "[${channel.name?json_string}](${message.messageUrl})"
      <#else>
      ,"value": "[${sourceChannelId?c}](${message.messageUrl})"
      </#if>
    }
  ],
  "timeStamp": "${message.timeCreated}"
}