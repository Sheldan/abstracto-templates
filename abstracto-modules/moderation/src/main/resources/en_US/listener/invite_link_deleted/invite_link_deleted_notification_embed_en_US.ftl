{
  <#include "member_author">
  <@member_author member=author/>,
  <#assign authorMention=author.asMention>
  "description": "<@safe_include "invite_link_deleted_embed_description"/>",
  <#include "abstracto_color"/>,
  "fields": [
    {
      "name": "<@safe_include "invite_link_deleted_invite_field_header"/>",
      "value": "<#list invites as invite>${invite}<#sep>,</#list>"
    },
    {
        "name": "<@safe_include "invite_link_deleted_message_link_title"/>",
        "value": "[${channel.name?js_string}](${message.jumpUrl})"
    }
  ]
}