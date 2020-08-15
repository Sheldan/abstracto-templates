{
  "author": {
    "name": "${member.effectiveName?js_string}#${member.user.discriminator}",
    "avatar":  "${member.user.effectiveAvatarUrl}"
  },
  "description": "<@safe_include "messageEdited_description_text"/>",
  "color" : {
    "r": 200,
    "g": 0,
    "b": 0
  },
  "fields": [
    {
      "name": "<@safe_include "messageEdited_original_message_field_title"/>",
      "value": "${messageBefore.content?js_string}"
    },
    {
          "name": "<@safe_include "messageEdited_new_message_field_title"/>",
          "value": "${messageAfter.contentRaw?js_string}"
    },
    {
        "name": "<@safe_include "messageEdited_link_field_title"/>",
        "value": "[${messageChannel.name?js_string}](${messageBefore.messageUrl})"
    }
  ]
}