{
  "author": {
    "name": "${user.member.effectiveName?js_string}",
    "avatar":  "${user.member.user.effectiveAvatarUrl}"
  },
  <#include "exception_color">,
  "description": "<@safe_include "modmail_failed_to_create_mod_mail_thread"/>"
}