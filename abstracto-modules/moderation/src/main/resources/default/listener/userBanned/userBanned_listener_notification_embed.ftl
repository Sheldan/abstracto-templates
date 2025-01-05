{
    "embeds": [
        {
            <#include "user_detail">
            <#include "abstracto_color">,
            <#if bannedUser.name?has_content>
                <#assign bannedUserName=bannedUser.name>
                "description" : "<@safe_include "userBanned_description_with_name"/>",
            <#else>
                "description" : "<@safe_include "userBanned_description"/>",
            </#if>
            "fields": [
                {
                    "name": "<@safe_include "userBanned_field_title_banned_user"/>",
                    "value": "<@user_detail user=bannedUser/>"
                }
                <#if banningUser??>
                ,
                {
                    "name": "<@safe_include "userBanned_field_title_banning_user"/>",
                    "value": "<@user_detail user=banningUser/>"
                }
                </#if>
                <#if reason??>
                ,
                {
                    "name": "<@safe_include "userBanned_field_title_reason"/>",
                    "value": "${reason?json_string}"
                }
                </#if>
            ]
        }
    ]
}