{
    "embeds": [
        {
            <#include "abstracto_color">,
            <#assign text><#include "${commandName}_confirmation"></#assign>
            "description": "${text?json_string}"
        }
    ],
    "buttons": [
      {
          "label": "<@safe_include "command_confirmation_message_confirm_field_title"/>",
          "id": "${confirmButtonId}",
          "buttonStyle": "secondary",
          "metaConfig": {
              "persistCallback": false
          }
      },
      {
        "label": "<@safe_include "command_confirmation_message_abort_field_title"/>",
        "id": "${abortButtonId}",
        "buttonStyle": "secondary",
        "metaConfig": {
            "persistCallback": false
        }
      }
    ]
}