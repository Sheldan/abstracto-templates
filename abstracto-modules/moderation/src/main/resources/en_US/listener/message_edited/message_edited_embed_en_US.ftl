{
  <#include "member_author">
  <@member_author member=member/>,
  <#include "abstracto_color"/>,
  "description": "<@safe_include "messageEdited_description_text"/>",
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