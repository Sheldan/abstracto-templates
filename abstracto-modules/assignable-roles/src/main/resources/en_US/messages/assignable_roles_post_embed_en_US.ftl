{
  <#include "assignable_place_color">,
  "description": "${place.text?js_string}",
  "fields": [
  <#list roles as role>
         {
             "name": "${role.emote.emoteRepr?js_string}",
             "value": "${role.description?js_string}",
             "inline": "${place.inline?string('true', 'false')}"
             <#if role.forceNewMessage>
             ,"forceNewMessage": "true"
             </#if>
         }<#sep>,
       <#else>
      </#list>
  ]
}