{
  "author": {
  <#if author?has_content>
    "name": "<@member_user_name member=author/>",
    "avatar": "${author.user.effectiveAvatarUrl}"
  <#else>
    "name": "${user.id?c} (<@safe_include "user_left_server"/>)"
  </#if>
  },
  <#include "abstracto_color">,
  <#if message.content?has_content || message.embeds?size gt 0>
   "description": "${message.content?js_string}
   <#list message.embeds>
        <@safe_include "starboard_post_embed_embeds_name"/>:
        <#items as embed>
            <@safe_include "starboard_post_embed_description"/>: ${embed.description?js_string} <#if embed.imageUrl?has_content> <@safe_include "starboard_post_embed_image_url"/>: ${embed.imageUrl} </#if>
        </#items>
   </#list>
   "
  </#if>
  <#assign emote>${starLevelEmote}</#assign>
  <#assign count>${starCount}</#assign>
  <#assign messageId>${message.messageId?c}</#assign>
  <#if channel?has_content>
  <#assign channelMention>${channel.asMention?js_string}</#assign>
  ,"additionalMessage": "<@safe_include "starboard_post_embed_additional_message"/>"
  <#else>
  <#assign channelMention>${aChannel.id?c}</#assign>
  ,"additionalMessage": "<@safe_include "starboard_post_embed_additional_message"/>"
  </#if>
  <#if message.attachments?size gt 0>
  ,"imageUrl": "${message.attachments[0].proxyUrl}"
  </#if>
  ,"fields": [
    {
      "name": "<@safe_include "starboard_post_embed_original_field_title"/>"
      <#if channel?has_content>
      ,"value": "[${channel.name?js_string}](${message.messageUrl})"
      <#else>
      ,"value": "[${aChannel.id?c}](${message.messageUrl})"
      </#if>
    }
  ],
  "timeStamp": "${message.timeCreated}"
}