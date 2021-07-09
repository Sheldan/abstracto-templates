{
  <#include "assignable_place_color">,
  "description": "<#assign channelMention><#if channelDisplay??>${channelDisplay.channelMention}<#else><@safe_include "assignable_roles_config_embed_no_channel_found"/></#if></#assign><@safe_include "assignable_roles_config_embed_place_description"/>
    <@safe_include "assignable_roles_config_embed_role_header"/>:
    <#list roles as role><#assign role=role/>
    <#assign emoteMention><#if role.emoteMarkDown??>${role.emoteMarkDown}<#else>No emote</#if></#assign>
    <#assign roleMention=role.roleDisplay.roleMention/>
    <#assign roleDescription=role.description/>
    <#assign conditionText><#list role.conditions as condition><#assign model=condition.templateModel><@safe_include "${condition.templateName}"/><#sep>, <#else><#include "assignable_role_condition_no_conditions"></#list></#assign>
    <@safe_include "assignable_roles_config_embed_role_description"/>

<#else><@safe_include "assignable_role_config_embed_no_roles"/></#list>
  "
}