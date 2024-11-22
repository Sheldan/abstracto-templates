<#macro member_user_name member>${member.effectiveName?json_string}<#if member.user.discriminator?number gt 0>#${member.user.discriminator}</#if></#macro>
<#macro member_member_name member><#if member.effectiveName?has_content>${member.effectiveName?json_string}<#else>${member.user.name?json_string}</#if><#if member.user.discriminator?number gt 0>#${member.user.discriminator}</#if></#macro>
<#macro member_display_member_name member><#if member.nickname?has_content>${member.nickname?json_string}<#else>${member.userName?json_string}</#if></#macro>
<#macro member_display_user_name member>${member.userName?json_string}<#if member.discriminator?number gt 0>#${member.discriminator}</#if></#macro>
