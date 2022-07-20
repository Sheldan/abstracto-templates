<#assign credits=entry.credits>
<#assign rank=entry.rank>
<#assign userId=entry.memberDisplay.userId>
<#assign memberDisplay><#if entry.member?has_content><@member_user_name member=entry.member/><#else>${userId?c}</#if></#assign>
#${rank} - ${credits} credits - ${memberDisplay}