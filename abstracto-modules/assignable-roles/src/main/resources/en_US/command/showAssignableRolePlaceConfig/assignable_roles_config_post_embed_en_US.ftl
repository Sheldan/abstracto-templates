{
  <#include "assignable_place_color">,
  "description": "<@safe_include "assignable_roles_config_embed_place_description"/>
    <@safe_include "assignable_roles_config_embed_role_header"/>:
    <#list roles as role><#assign role=role/><#assign rolePosition=role.position/><#assign emoteMention=role.emote.emoteRepr/><#assign roleMention><#if role.awardedRole?has_content>${role.awardedRole.asMention}<#else><#include "assignable_roles_config_embed_deleted_role"></#if></#assign><#assign roleDescription=role.description/>
     <@safe_include "assignable_roles_config_embed_emote_description"/>

    </#list>
  "
}