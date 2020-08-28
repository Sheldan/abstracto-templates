<#assign roles><#list model.allowedRoles as role>${role.name}<#sep>,<#else><#include "insufficient_role_none_configured"></#list></#assign>
<#include "insufficient_role_exception_text">