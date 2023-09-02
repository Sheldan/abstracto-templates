<#include "format_instant">
{
    "embeds": [
        {
            <#include "abstracto_color"/>,
            <#assign pollId=id>
            <#assign description=description>
            <#assign pollCreationDate><@format_instant_date_time instant=creationDate/></#assign>
            <#assign pollTargetDate><@format_instant_date_time instant=targetDate/></#assign>
            <#assign allowMultipleStr>${allowMultiple?string('✅', '❌')}</#assign>
            <#assign showDecisionsStr>${showDecisions?string('✅', '❌')}</#assign>
            <#assign allowAdditionsStr>${allowAdditions?string('✅', '❌')}</#assign>
            <#assign totalVotes=totalVotes>
            "description": "<@safe_include "showPoll_response_description"/><#list options as option><#assign option=option><@safe_include "showPoll_response_option_display"/><#sep>\n</#list>"
        }
    ]
}