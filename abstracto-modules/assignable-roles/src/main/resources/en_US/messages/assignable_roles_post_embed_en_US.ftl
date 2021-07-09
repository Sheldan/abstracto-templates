{
  <#include "assignable_place_color">,
  "description": "${placeDescription?json_string}"
  <#if roles?size gt 0>
   ,"buttons": [
   <#list roles as role>
      {
          "label": "${role.description?json_string}",
          "id": "${role.componentId}",
          "buttonStyle": "primary",
          <#if role.emoteMarkDown??>
          "emoteMarkdown": "${role.emoteMarkDown?json_string}",
          </#if>
          "metaConfig": {
              "persistCallback": false
          }
      }
      <#sep>,
    </#list>
    ]
  </#if>
}