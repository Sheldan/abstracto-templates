{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "help_command_embed_title"/>"
            },
            <#include "abstracto_color">,
            "description": "<@safe_include "help_command_embed_command_name"/>: **${command.name?json_string}**
<@safe_include "help_command_embed_command_description"/>: <#if command.templated> <@safe_include "${command.name}_description"/> <#else> ${command.description?json_string} </#if>

<#if command.help??>
<#if command.help.templated>
<#if command.slashCommandOnly><@safe_include "help_command_embed_command_slash_command_only"/></#if>
<#if command.messageCommandOnly><@safe_include "help_command_embed_command_message_command_only"/></#if>

<#if !command.slashCommandOnly>
**<@safe_include "help_command_embed_command_usage"/>**: `${usage}`
</#if>
**<@safe_include "help_command_embed_command_detailed_help"/>**: <@safe_include "${command.name}_long_help"/>
<#if command.help.hasExample && !command.slashCommandOnly>
<@safe_include "help_command_embed_command_example"/>: <@safe_include "${command.name}_example"/>
</#if>
<#else>
<#if command.slashCommandOnly><@safe_include "help_command_embed_command_slash_command_only"/></#if>
<#if command.messageCommandOnly><@safe_include "help_command_embed_command_message_command_only"/></#if>

<#if !command.slashCommandOnly>
**<@safe_include "help_command_embed_command_usage"/>**: `${usage}`
</#if>
**<@safe_include "help_command_embed_command_detailed_help"/>**: ${command.help.longHelp?json_string}
<#if command.help.hasExample && !command.slashCommandOnly>
<@safe_include "help_command_embed_command_example"/>:${command.help.example?json_string}
</#if>
</#if>
<#if command.aliases?? && command.aliases?size gt 0 && !command.slashCommandOnly>
<@safe_include "help_command_embed_command_aliases"/>: `${command.aliases?join("`, `")?json_string}`
</#if>
<#if serverSpecificAliases?size gt 0 && !command.slashCommandOnly>
<@safe_include "help_command_embed_command_server_aliases"/>: `${serverSpecificAliases?join("`, `")?json_string}`
</#if>
<#if cooldowns??>
<@safe_include "help_command_embed_command_cooldowns"/>:
<#if cooldowns.serverCoolDown?has_content>
<#assign serverCooldown>${fmtDuration(cooldowns.serverCoolDown)}</#assign>
<@safe_include "help_command_embed_command_cooldown_server"/>

</#if>
<#if cooldowns.channelCoolDown?has_content>
<#assign channelCooldown>${fmtDuration(cooldowns.channelCoolDown)}</#assign>
<@safe_include "help_command_embed_command_cooldown_channel"/>

</#if>
<#if cooldowns.memberCoolDown?has_content>
<#assign memberCooldown>${fmtDuration(cooldowns.memberCoolDown)}</#assign>
<@safe_include "help_command_embed_command_cooldown_member"/>

</#if>
</#if>
<#if restricted?? && restricted>
<@safe_include "help_command_embed_command_executable_by"/>:<#if allowedRoles??> <#list allowedRoles as allowedRole> ${allowedRole.asMention?json_string}<#sep><@safe_include "help_command_embed_or"/><#else><@safe_include "help_command_embed_command_executable_by_nobody"/></#list> </#if>
<#else>
<@safe_include "help_command_embed_command_not_restricted"/>
</#if>

<#if effects??><@safe_include "help_command_embed_command_effects"/>: <#list effects as effect> <@safe_include "effect_type_${effect}"/><#sep>,<#else><@safe_include "help_command_embed_command_effects_none"/></#list> </#if>

</#if>
**<@safe_include "help_command_embed_command_parameters"/>**:
<#if command.parameters??>
<#list command.parameters as parameter><#assign parameter=parameter>
<@safe_include "help_command_embed_command_description"/> `${parameter.name?json_string}`: <#if parameter.templated?? && parameter.templated><@safe_include "${command.name}_parameter_${parameter.name}"/><#else>${(parameter.description?json_string)!""}</#if> <@safe_include "help_command_embed_command_optional"/>
<#list parameter.validators as validator><#assign validator=validator><#assign model=validator.templateModel/><@safe_include "${validator.templateName}"/>

</#list>
<#sep>
<#else>
<@safe_include "help_command_embed_command_no_parameters"/>
</#list>
<#else>
<@safe_include "help_command_embed_command_no_parameters"/>
</#if>
"
        }
    ]
}