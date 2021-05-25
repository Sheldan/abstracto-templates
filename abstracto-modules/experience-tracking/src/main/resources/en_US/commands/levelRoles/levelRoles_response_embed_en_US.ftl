{
  <#include "success_color">,
  "description": "<#list levelRoles as role><#if role.role??><#assign roleRepr=role.role.asMention><#else><#assign roleRepr=role.roleId?c></#if><#assign levelRepr=role.level><@safe_include "levelRoles_response_description"/><#sep>
  <#else><@safe_include "levelRoles_no_roles_found"/></#list>"
}