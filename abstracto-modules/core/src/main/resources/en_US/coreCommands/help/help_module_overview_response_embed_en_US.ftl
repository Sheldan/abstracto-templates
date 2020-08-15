{
  "title": {
    "title": "<@safe_include "help_modules_embed_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "
       <#list modules as module><#assign module=module/>
       <@safe_include "help_module_embed_module_name"/>: **${module.info.name?js_string}**
       <@safe_include "help_module_embed_module_description"/>: ${module.info.description?js_string}
       </#list>
  ",
  "footer": {
    "text": "<@safe_include "help_modules_embed_footer_hint"/>"
  }
}