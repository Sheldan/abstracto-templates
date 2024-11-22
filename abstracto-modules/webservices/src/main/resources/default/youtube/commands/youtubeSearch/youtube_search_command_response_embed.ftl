{
    "embeds": [
        {
            <#include "abstracto_color">,
            "fields": [
                <#if video.views??>
                {
                    "name": "<@safe_include "youtube_search_command_response_embed_field_title_views"/>",
                    "value": "${video.views}",
                    "inline": "true"
                }
                <#if video.likes?? || video.dislikes?? || video.commentCount??>,</#if>
                </#if>
                <#if video.likes??>
                {
                    "name": "<@safe_include "youtube_search_command_response_embed_field_title_likes"/>",
                    "value": "${video.likes}",
                    "inline": "true"
                }
                <#if video.dislikes?? || video.commentCount??>,</#if>
                </#if>
                <#if video.dislikes??>
                {
                    "name": "<@safe_include "youtube_search_command_response_embed_field_title_dislikes"/>",
                    "value": "${video.dislikes}",
                    "inline": "true"
                }
                <#if video.commentCount??>,</#if>
                </#if>
                <#if video.commentCount??>
                {
                    "name": "<@safe_include "youtube_search_command_response_embed_field_title_comment_count"/>",
                    "value": "${video.commentCount}",
                    "inline": "true"
                }
                </#if>
            ],
            "footer": {
            "text": "<@safe_include "youtube_search_command_response_embed_footer"/>"
            },
            "timeStamp": "${video.publishedAt}"
        }
    ]
}