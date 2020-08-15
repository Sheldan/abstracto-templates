{
  "author": {
    "name": "${user.member.effectiveName?js_string}",
    "avatar":  "${user.member.user.effectiveAvatarUrl?js_string}"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "preventEmptyEmbed": "true",
  <#if template?has_content>
  <#if template.templateModel?has_content>
    <#assign model=template.templateModel/>
    <#include "${template.templateName}"/>
  </#if>
  <#elseif throwable.localizedMessage?has_content>
  "description": "${throwable.localizedMessage?js_string}"
  <#else>
  "description": "${throwable.class.simpleName?js_string}"
  </#if>
}