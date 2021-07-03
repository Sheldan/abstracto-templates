{
  <#include "member_author">
  <@member_author member=member/>,
  <#include "exception_color">,
  "metaConfig" : {
    "preventEmptyEmbed": "true",
    "ephemeral": true
  },
  <#assign effectiveTemplate=template>
  <#if effectiveTemplate?has_content>
  <#if effectiveTemplate.templateModel?has_content>
    <#assign model=effectiveTemplate.templateModel/>
    "description": "<@safe_include "${effectiveTemplate.templateName}"/>"
  </#if>
  <#elseif throwable.localizedMessage?has_content>
  "description": "${throwable.localizedMessage?json_string}"
  <#else>
  "description": "${throwable.class.simpleName?json_string}"
  </#if>
}