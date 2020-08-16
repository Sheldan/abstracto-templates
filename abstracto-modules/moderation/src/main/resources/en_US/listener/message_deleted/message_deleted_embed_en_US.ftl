{
  <#include "member_author">
  <@member_author member=member/>,
  "description": "<@safe_include "messageDeleted_description_text"/>",
  <@safe_include "abstracto_color"/>,
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