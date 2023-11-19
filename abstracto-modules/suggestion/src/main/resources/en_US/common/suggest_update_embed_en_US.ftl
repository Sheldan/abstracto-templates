{
    "embeds": [
        {
            <#include "abstracto_color">,
            <#if message?? && message.attachments?size gt 0>
            "imageUrl": "${message.attachments[0].proxyUrl}",
            </#if>
            "description": "<@safe_include "suggest_text_label"/>: ${text?json_string}"
            <#if reason?has_content || buttonsActive>,
            "fields": [
                <#if reason?has_content>
                {
                    "name": "<@safe_include "suggest_reason_field_title"/>",
                    "value": "${reason?json_string}"
                }
                </#if>
                <#if buttonsActive>
                <#if reason?has_content>
                    ,
                </#if>
                {
                    "name": "<@safe_include "suggestion_agreements_field_title"/>",
                    "value": "👍 ${agreeVotes?c} (${agreementPercentage?ceiling}%)"
                },
                {
                    "name": "<@safe_include "suggestion_disagreements_field_title"/>",
                    "value": "👎 ${disAgreeVotes?c} (${disAgreementPercentage?ceiling}%)"
                }
                </#if>
            ]
            </#if>
        }
    ],
    "referencedMessageId": "${originalMessageId?c}",
    <#assign id>${suggestionId}</#assign>
    "additionalMessage": "<@safe_include "suggest_state_${state?lower_case}_comment"/>"
}