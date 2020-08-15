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
  "description": "<@safe_include "remind_reminder_description"/>",
  "fields": [
    {
        "name": "<@safe_include "remind_reminder_duration_field_title"/>",
        "value": "${fmtDuration(duration)}"
    },
    {
        "name": "<@safe_include "remind_reminder_note_field_title"/>",
        "value": "${reminder.text?js_string}"
    },
    {
        "name": "<@safe_include "remind_reminder_link_field_title"/>",
        "value": "[<@safe_include "remind_reminder_link_content_display_text"/>](${messageUrl})"
    }
  ],
  "additionalMessage": "${member.asMention?js_string}"
}