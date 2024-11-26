{
    "embeds": [
        {
            <#macro userDisplay user>
            [${user.rank}] -> <#if user.member?has_content>**<@member_user_name member=user.member/>**<#else>${user.userId?c}</#if>
            <@safe_include "leaderboard_experience_column"/>: ${user.experience} | <@safe_include "leaderboard_level_column"/>: ${user.level} | <@safe_include "leaderboard_messages_column"/>:  ${user.messageCount}
            </#macro>
            <#include "success_color">,
            "description": "
<@safe_include "leaderboard_rank_column"/> | <@safe_include "leaderboard_name_column"/> | <@safe_include "leaderboard_experience_column"/> | <@safe_include "leaderboard_level_column"/> | <@safe_include "leaderboard_messages_column"/>
<#list userExperiences as user>
<@userDisplay user=user />

</#list>
<#assign showPlacement=showPlacement>
<#if showPlacement>
    <@safe_include "leaderboard_own_placement"/>:
    <@userDisplay user=userExecuting />
</#if>
",
            "footer": {
                "text": "<@safe_include "leaderboard_footer"/>"
            }
        }
    ]
    <#if leaderboardUrl?has_content>
    ,"buttons": [
        {
            "label": "<@safe_include "leaderboard_leaderboard_button_label"/>",
            <#assign leaderboardUrl=leaderboardUrl>
            "url": "${leaderboardUrl}",
            "buttonStyle": "link"
        }
    ]
    </#if>
}