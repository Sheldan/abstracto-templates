<#macro member_display_avatar member><#if member.memberAvatarUrl?has_content>${member.memberAvatarUrl?json_string}<#else>${member.userAvatarUrl?json_string}</#if></#macro>
