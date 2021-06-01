<#macro user_detail user>${user.name?json_string}#${user.discriminator} (${user.idLong?c})</#macro>
