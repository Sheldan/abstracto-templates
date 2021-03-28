{
  "title": {
    "title": "<@safe_include "help_modules_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "
       <#list modules as module><#assign module=module/>
       **${module.info.name?json_string}**
       <#if module.info.templated?? && module.info.templated><@safe_include "module_${module.info.name}_description"/><#else>${module.info.description?json_string}</#if>
       </#list>
  ",
  "footer": {
    "text": "<@safe_include "help_modules_embed_footer_hint"/>"
  }
}