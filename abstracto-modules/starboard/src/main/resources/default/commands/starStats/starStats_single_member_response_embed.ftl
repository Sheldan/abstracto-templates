{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "starStats_member_response_title"/>"
            },
            "author": {
                "name": "<@member_user_name member=member/>",
                "avatar":  "${member.user.effectiveAvatarUrl}"
            },
            <#include "abstracto_color">,
            "fields": [
                {
                    "name": "<@safe_include "starStats_top_starred_field_title"/>",
                    "value": "
<#list topPosts as post><#assign post=post/>
<#assign badge>${badgeEmotes[post?index]}</#assign><#assign count>${post.starCount}</#assign><#assign link>${post.messageUrl}</#assign> <@safe_include "starStats_starred_entry"/><#else>
<@safe_include "starStats_no_starred_messages"/>
</#list>
"
                },
                {
                    "name": "<@safe_include "starStats_member_received_stars_field_title"/>",
                    "value": "${receivedStars}"
                },
                {
                    "name": "<@safe_include "starStats_member_given_stars_field_title"/>",
                    "value": "${givenStars}"
                }
            ]
        }
    ]
}