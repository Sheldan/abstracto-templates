{
  "author": {
    "name": "${member.effectiveName?js_string}#${member.user.discriminator}",
    "avatar":  "${member.user.effectiveAvatarUrl}"
  },
  "description": "<@safe_include "messageDeleted_description_text"/>",
  "color" : {
    "r": 200,
    "g": 0,
    "b": 0
  },
  "fields": [
    {
      "name": "<@safe_include "messageDeleted_original_message_field_title"/>",
      "value": "${cachedMessage.content?js_string}"
    },
    {
        "name": "<@safe_include "messageDeleted_message_link_field_title"/>",
        "value": "[${messageChannel.name?js_string}](${cachedMessage.messageUrl})"
    }
  ]
}