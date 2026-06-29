{
  "embeds": [
    {
      "description": "<#list row as quickReply><#assign quickReply=quickReply><@safe_include "listQuickReplies_entry"/>\n</#list>"
    }
  ],
  "buttons": [
    <#include "paginator_buttons">
  ]
}