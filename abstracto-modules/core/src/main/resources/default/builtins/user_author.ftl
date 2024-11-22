<#macro user_author user> "author": { "name": <#include "user_user_name"> "<@user_user_name user=user/>", "avatar":  "${user.effectiveAvatarUrl}" }</#macro>
<#macro user_detail_author user> "author": { "name": <#include "user_user_name"> "<@user_user_name user=userDisplay/>"<#if user.avatarUrl?has_content>, "avatar":  "${user.avatarUrl}"</#if>}</#macro>
