{
  <#include "member_author">
  <@member_author member=member/>,
  "title": {
    "title": "<@safe_include "list_disabled_experience_roles_embed_title"/>"
  },
  <#include "success_color">,
  "description": "
    <#list roles as role>
    ${role.role.asMention?js_string}
    <#else>
    <@safe_include "list_disabled_experience_roles_embed_no_roles"/>
    </#list>
  "
}