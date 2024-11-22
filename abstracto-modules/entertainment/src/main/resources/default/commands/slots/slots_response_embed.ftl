{
    <#assign newCredits=newCredits>
    <#assign bid=bid>
    <#assign oldCredits=oldCredits>
    <#assign winnings><#if winnings gt 0>${winnings}<#else>0</#if></#assign>
    <#assign factor=factor>
    <#assign rows=rows>
    <#assign outcomeKey=outComeKey>
    <#assign board><#include "slots_board_display"/></#assign>
    "additionalMessage": "~~\n~~<@safe_include "slots_outcome_description"/>"
}