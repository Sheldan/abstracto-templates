{
    "embeds": [
        {
            <#include "abstracto_color">,
            "description": "<#list entries as entry><#assign entry=entry><@safe_include "creditLeaderboard_rank_entry"/>\n</#list>
            <#assign entry=ownRank><@safe_include "creditLeaderboard_rank_entry"/>"
        }
    ]
}