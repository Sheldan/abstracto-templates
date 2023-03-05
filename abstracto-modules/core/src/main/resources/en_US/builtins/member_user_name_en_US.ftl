<#macro member_user_name member>${member.effectiveName?json_string}#${member.user.discriminator}</#macro>
<#macro member_display_member_name member><#if member.nickname?has_content>${member.nickname?json_string}<#else>${member.userName?json_string}</#if>#${member.discriminator}</#macro>
<#macro member_display_user_name member>${member.userName?json_string}#${member.discriminator}</#macro>
