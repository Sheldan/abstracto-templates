{
  "author": {
    "name": "${member.effectiveName?js_string}",
    "avatar":  "${member.user.effectiveAvatarUrl}"
  },
  "title": {
    "title": "<@safe_include "list_disabled_experience_roles_embed_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "
    <#list roles as role>
    ${role.role.asMention?js_string}
    <#else>
    <@safe_include "list_disabled_experience_roles_embed_no_roles"/>
    </#list>
  "
}