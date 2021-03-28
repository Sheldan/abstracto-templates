{
  <#include "member_author">
  <#if user?has_content>
  <@member_author member=user.member/>,
  <#else>
  "author":
    {
        "name": "${fullUser.user.name?json_string}#${fullUser.user.discriminator}",
        "avatar":  "${fullUser.user.effectiveAvatarUrl}"
    },
  </#if>
  <#include "exception_color">,
  "preventEmptyEmbed": "true",
  <#if template?has_content>
  <#if template.templateModel?has_content>
    <#assign model=template.templateModel/>
    "description": "<@safe_include "${template.templateName}"/>"
  </#if>
  <#elseif throwable.localizedMessage?has_content>
  "description": "${throwable.localizedMessage?json_string}"
  <#else>
  "description": "${throwable.class.simpleName?json_string}"
  </#if>
}