{
<#assign name>${module.moduleInterface.info.name}</#assign>
  "title": {
    "title": "<@safe_include "help_module_embed_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "
       <@safe_include "help_module_embed_module_name"/>: **${module.moduleInterface.info.name?js_string}**
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