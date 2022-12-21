{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=member/>,
            <#include "success_color">,
            "fields": [
                {
                    "name": "<@safe_include "rank_xp_field_title"/>",
                    "value": "${rankUser.experience}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "rank_level_field_title"/>",
                    "value": "${rankUser.level}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "rank_messages_field_title"/>",
                    "value": "${rankUser.messageCount}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "rank_to_next_level_field_title"/>",
                    "value": "${experienceToNextLevel}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "rank_rank_field_title"/>",
                    "value": "${rankUser.rank}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "rank_level_progress_field_title"/>",
                    "value": "${inLevelExperience} <#list 0..currentLevelPercentage/10?floor as cent><#if cent gt 0>🔹</#if></#list><#if (currentLevelPercentage % 10) gt 4>🔸<#else>▫</#if><#assign restCent></#assign><#list 0..(10 - currentLevelPercentage/10?ceiling) as cent><#if cent gt 0>▫</#if>️</#list> ${nextLevelExperience - experienceForCurrentLevel}",
                    "inline": "false"
                }
            ]
        }
    ]
}