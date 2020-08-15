{
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "<@safe_include "assignable_roles_config_embed_place_description"/>
    <@safe_include "assignable_roles_config_embed_role_header"/>:
    <#list roles as role><#assign role=role/>
     <@safe_include "assignable_roles_config_embed_emote_description"/>

    </#list>
  "
}