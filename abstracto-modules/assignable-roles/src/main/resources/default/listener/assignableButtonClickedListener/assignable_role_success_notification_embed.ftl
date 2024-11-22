{
    "embeds": [
        {
            <#include "abstracto_color">,
            "metaConfig" : {
                "preventEmptyEmbed": "true"
            },
            <#assign roleText=role.asMention>
            <#if added>
            <#assign removedRolesText>${removedRoles?map(role -> role.asMention)?join(", ")}</#assign>
            "description": "<@safe_include "assignable_role_added_success"/>
            <#if removedRoles?size gt 0><@safe_include "assignable_role_added_roles_removed"/></#if>"
            <#else>
            "description": "<@safe_include "assignable_role_removed_success"/>"
            </#if>
        }
    ],
    "messageConfig": {
     "ephemeral": true
    }
}