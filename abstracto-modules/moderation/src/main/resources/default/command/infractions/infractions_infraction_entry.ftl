<#include "format_instant">
<#assign decayed=infraction.decayed/>
<#assign infractionId=infraction.infractionId/>
<#assign type=infraction.type/>
<#assign reason=infraction.reason/>
<#assign infractionUserText><#if infraction.infractionUser.memberMention??>${infraction.infractionUser.memberMention}(${infraction.infractionUser.userId?c})<#else>${infraction.infractionUser.userId?c}</#if></#assign>
<#assign infractionCreatorUserText><#if infraction.infractionCreationUser.memberMention??>${infraction.infractionCreationUser.memberMention}(${infraction.infractionCreationUser.userId?c})<#else>${infraction.infractionCreationUser.userId?c}</#if></#assign>
<#assign infractionDate><@format_instant_date_time instant=infraction.creationDate/></#assign>
<#assign parameterText><#list infraction.parameters?keys as key><@safe_include "infraction_parameter_${type}_${key}_label"/>: ${infraction.parameters[key]}</#list></#assign>
<#include "infractions_infraction_entry_text">

<#if decayed>
<#assign decayDate><@format_instant_date_time instant=infraction.decayDate/></#assign>
 <#include "infractions_infraction_is_decayed">
</#if>