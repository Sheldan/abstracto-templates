{
  "title": {
    "title": "<@safe_include "help_command_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "<@safe_include "help_command_embed_command_name"/>: **${command.name?js_string}**
<@safe_include "help_command_embed_command_description"/>: <#if command.templated> <@safe_include "${command.name}_description"/> <#else> ${command.description?js_string} </#if>

<#if command.help??>
<#if command.help.templated>
**<@safe_include "help_command_embed_command_usage"/>**: `<@safe_include "${command.name}_usage"/>`
**<@safe_include "help_command_embed_command_detailed_help"/>**: <@safe_include "${command.name}_long_help"/>
<#if command.help.hasExample>
<@safe_include "help_command_embed_command_example"/>: <@safe_include "${command.name}_example"/>
</#if>
<#else>
**<@safe_include "help_command_embed_command_usage"/>**: `${command.help.usage?js_string}`
**<@safe_include "help_command_embed_command_detailed_help"/>**: ${command.help.longHelp?js_string}
<#if command.help.hasExample>
<@safe_include "help_command_embed_command_example"/>:${command.help.example?js_string}
</#if>
</#if>
<#if command.aliases?? && command.aliases?size gt 0>
<@safe_include "help_command_embed_command_aliases"/>: `${command.aliases?join("`, `")?js_string}`
</#if>
<#if restricted?? && restricted>
<@safe_include "help_command_embed_command_executable_by"/>:<#if allowedRoles??> <#list allowedRoles as allowedRole> ${allowedRole.asMention?js_string}<#sep><@safe_include "help_command_embed_or"/><#else><@safe_include "help_command_embed_command_executable_by_nobody"/></#list> </#if>
<#if immuneRoles?? ><@safe_include "help_command_embed_command_immune"/>: <#list immuneRoles as immuneRole> ${immuneRole.asMention?js_string}<#sep><@safe_include "help_command_embed_or"/><#else><@safe_include "help_command_embed_command_immune_none"/></#list> </#if>
<#else>
<@safe_include "help_command_embed_command_not_restricted"/>
</#if>

</#if>
**<@safe_include "help_command_embed_command_parameters"/>**:
<#if command.parameters??>
<#list command.parameters as parameter>
<@safe_include "help_command_embed_command_description"/> `${parameter.name?js_string}`: <#if parameter.templated?? && parameter.templated><@safe_include "${command.name}_parameter_${parameter.name}"/><#else>${(parameter.description?js_string)!""}</#if>
<@safe_include "help_command_embed_command_optional"/><#sep>

<#else>
<@safe_include "help_command_embed_command_no_parameters"/>
</#list>
<#else>
<@safe_include "help_command_embed_command_no_parameters"/>
</#if>
  "
}