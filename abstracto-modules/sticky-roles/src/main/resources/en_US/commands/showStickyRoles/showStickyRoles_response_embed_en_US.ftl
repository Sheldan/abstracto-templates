{
    "embeds": [
        {
            <#macro stickyRoleDisplay role>
                ${role.roleDisplay.roleMention}: ${role.sticky?string('✅', '❌')}
            </#macro>
            "description": "<#list roles as role><@stickyRoleDisplay role=role/></#list>"
        }
    ]
}