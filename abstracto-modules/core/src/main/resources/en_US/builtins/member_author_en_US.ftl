<#macro member_author member> "author": { "name": "<@member_user_name member=member/>", "avatar":  "${member.user.effectiveAvatarUrl}" }</#macro>
<#macro member_display_author member> "author": { "name": "<@member_display_user_name member=member/>", "avatar":  "<@member_display_avatar member=member/>" }</#macro>
