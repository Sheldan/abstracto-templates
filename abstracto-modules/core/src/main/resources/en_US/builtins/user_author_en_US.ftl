<#macro user_author user> "author": { "name": <#include "user_user_name"> "<@user_user_name user=user/>", "avatar":  "${user.effectiveAvatarUrl}" }</#macro>
