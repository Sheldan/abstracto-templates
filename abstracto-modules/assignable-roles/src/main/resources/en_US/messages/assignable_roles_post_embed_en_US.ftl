{
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "${place.text}",
  "fields": [
  <#list roles as role>
         {
             "name": "${role.emote.emoteRepr}",
             "value": "${role.description}",
             "inline": "${place.inline?string('true', 'false')}"
             <#if role.forceNewMessage>
             ,"forceNewMessage": "true"
             </#if>
         }<#sep>,
       <#else>
      </#list>
  ]
}