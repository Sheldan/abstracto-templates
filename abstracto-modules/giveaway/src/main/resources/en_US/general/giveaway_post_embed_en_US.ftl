<#include "format_instant">
{
    "embeds": [
        {
            "title": {
                <#assign title=title?json_string>
                <#assign id=giveawayId?json_string>
                "title": "<@safe_include "giveaway_post_embed_title"/>"
            },
            <#include "abstracto_color">,
            <#if description?has_content><#assign description=description?json_string></#if>
            <#assign endDate><@format_instant_relative instant=targetDate/></#assign>
            <#assign host=creator.memberMention/>
            <#if benefactor?has_content><#assign benefactor=benefactor.memberMention/></#if>
            <#assign memberMentions><#list winners as winner>${winner.memberMention}<#sep>,<#else><@safe_include "giveaway_result_no_winner"/></#list></#assign>
            <#assign cancelled=cancelled>
            <#assign entries=joinedUserCount>
            <#assign ended=ended>
            <#assign winnerCount=winnerCount>
            "description": "<@safe_include "giveaway_post_embed_description"/>"
        }
    ]
    <#if !cancelled && !ended>,
    "buttons": [
        {
            "label": "<@safe_include "giveaway_post_join_button_label"/>",
            "id": "${joinComponentId}",
            "buttonStyle": "secondary",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
    </#if>
}