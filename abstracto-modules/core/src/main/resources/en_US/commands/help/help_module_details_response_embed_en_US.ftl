{
  "title": {
    <#assign name=module.moduleDefinition.info.name/>
    "title": "<@safe_include "help_module_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "
       <@safe_include "help_module_embed_module_name"/>: **${name?json_string}**
       <@safe_include "help_module_embed_module_description"/>: <#if module.moduleDefinition.info.templated?? && module.moduleDefinition.info.templated><@safe_include "module_${name}_description"/><#else>${module.moduleDefinition.info.description?json_string}</#if>
       <@safe_include "help_module_embed_commands"/>:
       <#list module.commands as command>`${command.configuration.name?json_string}`<#sep>, <#else><@safe_include "help_module_no_commands_available"/></#list>
       <#if subModules?has_content && subModules?size gt 0>
       <@safe_include "help_module_embed_sub_modules"/>: <#list subModules as module>`${module.info.name?json_string}`<#sep>, </#list>
       </#if>
  ",
  "footer": {
       "text": "<@safe_include "help_command_embed_hint_footer"/>"
   }
}