{
  <#assign id>${suggestionId}</#assign>
  "additionalMessage": "<@safe_include "suggest_state_${state?lower_case}_comment"/>",
  <#if reason?has_content || message?? && message.attachments?size gt 0>
      <#include "abstracto_color">,
      <#if message?? && message.attachments?size gt 0>
        "imageUrl": "${message.attachments[0].proxyUrl}",
      </#if>
      <#if reason?has_content>
      "fields": [
        {
            "name": "<@safe_include "suggest_reason_field_title"/>",
            "value": "${reason?json_string}"
        }
      ],
      </#if>
  </#if>
  "referencedMessageId": "${originalMessageId?c}"
}