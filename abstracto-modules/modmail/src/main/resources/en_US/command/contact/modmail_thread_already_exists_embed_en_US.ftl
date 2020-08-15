{
  "author": {
    "name": "${member.effectiveName?js_string}",
    "avatar":  "${member.user.effectiveAvatarUrl}"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "<@safe_include "modmail_thread_already_exists"/>",
  "fields": [
     {
        "name": "<@safe_include "modmail_existing_thread_link_field_title"/>",
        "value": "[<@safe_include "modmail_existing_thread_link_content_display_text"/>](${threadUrl})"
     }
  ]
}
