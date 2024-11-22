<#include "format_instant">
{
    "embeds": [
        {
            <#include "member_author">
            <@member_display_user_author member=memberDisplay/>,
            <#include "abstracto_color">,
            <#include "member_avatar">
            "thumbnail":  "<@member_display_avatar member=memberDisplay/>",
            "fields": [
                {
                    "name": "<@safe_include "userInfo_response_embed_id_field_title"/>",
                    "value": "${id?c}",
                    "inline": "true"
                },
                <#if memberDisplay.nickname?has_content>
                {
                    "name": "<@safe_include "userInfo_response_embed_nickname_field_title"/>",
                    "value": "${memberDisplay.nickname?json_string}",
                    "inline": "true"
                },
                </#if>
                {
                    "name": "<@safe_include "userInfo_response_embed_status_field_title"/>",
                    "value": "${onlineStatus?json_string}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "userInfo_response_embed_joined_field_title"/>",
                    "value": "<@format_instant_date_time instant=joinDate/>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "userInfo_response_embed_registered_field_title"/>",
                    "value": "<@format_instant_date_time instant=creationDate/>",
                    "inline": "true"
                }
                <#if roles?size gt 0>
                ,
                {
                    "name": "<@safe_include "userInfo_response_embed_roles_field_title"/>",
                    "value": "<#list roles as role>${role.roleMention?json_string}<#sep> </#list>",
                    "inline": "true",
                    "valueSplitLength": 250
                }
                </#if>
                <#if activities?size gt 0>
                ,
                {
                    "name": "<@safe_include "userInfo_response_embed_activity_field_title"/>",
                    "value": "<#list activities as activity>${activity?json_string}<#sep>, </#list>",
                    "inline": "true"
                }
                </#if>
                <#if customStatus?has_content || customEmoji?has_content>
                ,
                {
                    "name": "<@safe_include "userInfo_response_embed_custom_status_field_title"/>",
                    "value": "<#if customEmoji?has_content>${customEmoji?json_string} </#if><#if customStatus?has_content>${customStatus?json_string}</#if>",
                    "inline": "true"
                }
                </#if>
            ]
        }
    ]
}