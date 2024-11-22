{
  "embeds": [
    {
      "description": "<#list row as command><#assign command=command><@safe_include "listCustomCommands_entry"/>\n</#list>"
    }
  ],
  "buttons": [
    <#include "paginator_buttons">
  ]
}