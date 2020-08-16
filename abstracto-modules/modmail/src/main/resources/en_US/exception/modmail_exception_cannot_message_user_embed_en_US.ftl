{
  "author": {
    "name": "${user.member.effectiveName?js_string}",
    "avatar":  "${user.member.user.effectiveAvatarUrl}"
  },
  <#include "exception_color">,
  "description": "<@safe_include "reply_exception_cannot_send_message_to_use"/>"
}