{
  <#include "moderation_action_color">,
  <#assign mentionCount=mentionCount/>
  <#assign memberMention=memberDisplay.memberMention/>
  "description": "<@safe_include "massPing_mute_notification_embed_description"/>",
  "fields": [
    {
          "name": "<@safe_include "massPing_mute_notification_embed_message_content_field_title"/>",
          "value": "${messageContent?json_string}"
    },
    {
          "name": "<@safe_include "massPing_mute_notification_embed_message_link_field_title"/>",
          "value": "[<@safe_include "massPing_mute_notification_embed_message_link_field_value"/>](${messageLink})"
    }
  ]
}