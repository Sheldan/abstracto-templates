{
  "title": {
    "title": "<@safe_include "help_command_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "<@safe_include "help_command_embed_command_name"/>: **${command.name?json_string}**
<@safe_include "help_command_embed_command_description"/>: <#if command.templated> <@safe_include "${command.name}_description"/> <#else> ${command.description?json_string} </#if>

<#if command.help??>
<#if command.help.templated>
**<@safe_include "help_command_embed_command_usage"/>**: `${usage}`
**<@safe_include "help_command_embed_command_detailed_help"/>**: <@safe_include "${command.name}_long_help"/>
<#if command.help.hasExample>
<@safe_include "help_command_embed_command_example"/>: <@safe_include "${command.name}_example"/>
</#if>
<#else>
**<@safe_include "help_command_embed_command_usage"/>**: `${usage}`
**<@safe_include "help_command_embed_command_detailed_help"/>**: ${command.help.longHelp?json_string}
<#if command.help.hasExample>
<@safe_include "help_command_embed_command_example"/>:${command.help.example?json_string}
</#if>
</#if>
<#if command.aliases?? && command.aliases?size gt 0>
<@safe_include "help_command_embed_command_aliases"/>: `${command.aliases?join("`, `")?json_string}`
</#if>
<#if serverSpecificAliases?size gt 0>
<@safe_include "help_command_embed_command_server_aliases"/>: `${serverSpecificAliases?join("`, `")?json_string}`
</#if>
<#if restricted?? && restricted>
<@safe_include "help_command_embed_command_executable_by"/>:<#if allowedRoles??> <#list allowedRoles as allowedRole> ${allowedRole.asMention?json_string}<#sep><@safe_include "help_command_embed_or"/><#else><@safe_include "help_command_embed_command_executable_by_nobody"/></#list> </#if>
<#if immuneRoles?? ><@safe_include "help_command_embed_command_immune"/>: <#list immuneRoles as immuneRole> ${immuneRole.asMention?json_string}<#sep><@safe_include "help_command_embed_or"/><#else><@safe_include "help_command_embed_command_immune_none"/></#list> </#if>
<#else>
<@safe_include "help_command_embed_command_not_restricted"/>
</#if>

</#if>
**<@safe_include "help_command_embed_command_parameters"/>**:
<#if command.parameters??>
<#list command.parameters as parameter><#assign parameter=parameter>
<@safe_include "help_command_embed_command_description"/> `${parameter.name?json_string}`: <#if parameter.templated?? && parameter.templated><@safe_include "${command.name}_parameter_${parameter.name}"/><#else>${(parameter.description?json_string)!""}</#if>
<#list parameter.validators as validator><#assign validator=validator><#assign model=validator.templateModel/><@safe_include "${validator.templateName}"/>
</#list>

<@safe_include "help_command_embed_command_optional"/><#sep>

<#else>
<@safe_include "help_command_embed_command_no_parameters"/>
</#list>
<#else>
<@safe_include "help_command_embed_command_no_parameters"/>
</#if>
  "
}