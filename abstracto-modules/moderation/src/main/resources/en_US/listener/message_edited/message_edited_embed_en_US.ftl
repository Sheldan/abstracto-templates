{
  <#include "member_author">
  <@member_author member=member/>,
  "description": "<@safe_include "messageEdited_description_text"/>",
  <@safe_include "abstracto_color"/>,
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