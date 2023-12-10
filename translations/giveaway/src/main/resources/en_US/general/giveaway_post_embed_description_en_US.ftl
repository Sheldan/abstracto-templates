<#if cancelled>~~</#if>
<#if description?has_content>${description}</#if>
Giveaway end: ${endDate}
Hosted by: ${host}
<#if benefactor?has_content>Provided by: ${benefactor}</#if>
Entries: ${entries}
Winners: <#if ended>${memberMentions}<#else>${winnerCount}</#if>
<#if cancelled>~~</#if>