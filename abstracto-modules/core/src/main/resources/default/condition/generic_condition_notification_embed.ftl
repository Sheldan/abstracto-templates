{
    "embeds": [
        {
            <#include "member_author">
            <@member_author member=guildChannelMember.member/>,
            <#include "warning_color">,
            "metaConfig" : {
                "preventEmptyEmbed": "true"
            },
            <#assign model=conditionDetail.templateModel/>
            "description": "<@safe_include "${conditionDetail.templateName}"/>"
        }
    ]
}