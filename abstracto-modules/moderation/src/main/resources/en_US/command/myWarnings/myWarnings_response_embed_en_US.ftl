{
  "author": {
    "name": "${member.effectiveName?js_string}",
    "avatar":  "${member.user.effectiveAvatarUrl}"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  }
  <#assign userMention>${member.effectiveName?js_string}</#assign>
  ,"description" :"<@safe_include "myWarnings_with_decay_embed_description"/>"
  </#if>
}