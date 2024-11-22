{
    <#assign totalMines=mineCount>
    <#assign userLost=state.name() == "LOST">
    <#assign userWon=state.name() == "WON">
    <#assign ended=userLost || userWon>
    <#if creditsEnabled>
        <#assign changedCreditAmount=creditChange/>
        <#assign creditAmount=credits/>
        <#assign stateText><#if state.name() == "WON"><#include "mines_state_won_credits"><#elseif state.name() == "LOST"><#include "mines_state_lost_credits"><#else><#include "mines_state_continue_credits"></#if></#assign>
    <#else>
        <#assign stateText><#if state.name() == "WON"><#include "mines_state_won"><#elseif state.name() == "LOST"><#include "mines_state_lost"><#else><#include "mines_state_continue"></#if></#assign>
    </#if>
"additionalMessage": "<@safe_include "mines_additional_message"/>",
    "buttons": [
        <#list rows as row>
            <#list row.fields as field>
                {
                    <#if ended>
                        <#assign label><#if field.counterValue != 0>${field.counterValue}<#elseif field.type.name() == "EXPLODED">💀<#elseif field.type.name() == "MINE">💣<#elseif field.type.name() == "UNCOVERED">o</#if></#assign>
                    <#else>
                        <#assign label><#if field.type.name() == "COVERED" || field.type.name() == "MINE">x<#elseif field.counterValue != 0>${field.counterValue}<#else>o</#if></#assign>
                    </#if>
                    "label": "${label}",
                    "id": "${boardId}_${field.x}_${field.y}",
                    "buttonStyle": "secondary",
                    <#if ended>"disabled": true,</#if>
                    "metaConfig": {
                        "persistCallback": false
                        <#if field?is_first>
                        ,"forceNewRow": true
                        </#if>
                    }
                }
                <#sep>,
            </#list>
            <#sep>,
        </#list>
    ]
}