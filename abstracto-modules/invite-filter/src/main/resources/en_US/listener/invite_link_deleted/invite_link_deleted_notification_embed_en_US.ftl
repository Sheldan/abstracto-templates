{
  <#include "member_author">
  <@member_author member=author/>,
  <#assign authorMention=author.asMention>
  "description": "<@safe_include "invite_link_deleted_embed_description"/>",
  <#include "abstracto_color"/>,
  "fields": [
    {
      "name": "<@safe_include "invite_link_deleted_invite_field_header"/>",
      "value": "<#list invites as invite><#if invite.count gt 1>${invite.count}x </#if>${invite.code}<#if invite.guildName?has_content> (${invite.guildName})</#if><#sep>, </#list>"
    },
    {
        "name": "<@safe_include "invite_link_deleted_message_link_title"/>",
        "value": "[${channel.name?json_string}](${message.jumpUrl})"
    }
  ]
}