<#macro user_detail user>${user.name?json_string}<#if user.discriminator?number gt 0>#${user.discriminator}</#if> (${user.idLong?c})</#macro>
