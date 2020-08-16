{
  "title": {
    <#assign name=module.moduleInterface.info.name/>
    "title": "<@safe_include "help_module_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "
       <@safe_include "help_module_embed_module_name"/>: **${name?js_string}**
       <@safe_include "help_module_embed_module_description"/>: ${module.moduleInterface.info.description?js_string}
       <@safe_include "help_module_embed_commands"/>:
       <#list module.commands as command>`${command.configuration.name?js_string}`<#sep>, </#list>
       <#if module.subModules??>
       <@safe_include "help_module_embed_sub_modules"/>: <#list module.subModules as module>`${module.info.name?js_string}`<#sep>, </#list>
       </#if>
  ",
  "footer": {
       "text": "<@safe_include "help_command_embed_hint_footer"/>"
   }
}