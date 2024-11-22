<#macro user_user_name user>${user.name?json_string}<#if user.discriminator?number gt 0>#${user.discriminator}</#if></#macro>
