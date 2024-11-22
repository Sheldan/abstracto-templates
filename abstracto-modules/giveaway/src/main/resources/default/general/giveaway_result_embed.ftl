{
    <#assign winnerCount=winners?size>
    <#assign memberMentions><#list winners as winner>${winner.memberMention}<#sep>,</#list></#assign>
    <#assign prize=title>
    "additionalMessage": "<#if winnerCount gt 0><@safe_include "giveaway_result_text"/><#else><@safe_include "giveaway_result_no_winner"/></#if>",
    "referencedMessageId": "${messageId?c}"
}