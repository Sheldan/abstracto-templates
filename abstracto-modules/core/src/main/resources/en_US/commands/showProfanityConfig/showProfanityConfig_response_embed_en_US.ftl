{
  <#include "success_color">,
  "description": "
<#list profanityGroups as profanityGroup><#assign profanityGroup=profanityGroup/>
<#assign profanityGroupName>${profanityGroup.groupName?json_string}</#assign>
<@safe_include "showProfanityConfig_group_description"/>

<#list profanityGroup.profanities as profanity>
<#assign profanityRegexName>${profanity.regexName?json_string}</#assign><#assign profanityRegex>${profanity.regex?json_string}</#assign><#if profanity.replacement??><#assign profanityReplacement>${profanity.replacement?json_string}</#assign></#if>
<@safe_include "showProfanityConfig_profanity_regex_display"/>

<#else>
<@safe_include "showProfanityConfig_no_profanity_regex"/>
</#list>
<#else>
<@safe_include "showProfanityConfig_no_profanity_groups"/>
</#list>
"
}