{
  <#include "member_author">
  <@member_author member=user.member/>,
  <#include "exception_color">,
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