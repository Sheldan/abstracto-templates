{
  <#include "assignable_place_color">,
  "description": "${place.text?json_string}",
  "fields": [
  <#list roles as role>
         {
             "name": "${role.emote.emoteRepr?json_string}",
             "value": "${role.description?json_string}",
             "inline": "${place.inline?string('true', 'false')}"
             <#if role.forceNewMessage>
             ,"forceNewMessage": "true"
             </#if>
         }<#sep>,
       <#else>
      </#list>
  ]
}