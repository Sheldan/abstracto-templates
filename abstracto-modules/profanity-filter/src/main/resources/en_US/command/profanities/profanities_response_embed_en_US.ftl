{
  <#include "full_member_info">
  <#include "abstracto_color">,
  <#include "member_author">
  <@member_author member=member/>,
  "fields": [
  {
        "name": "<@safe_include "profanities_response_embed_true_profanities_field_title"/>",
        "value": "${truePositives?c}",
        "inline": "true"
  },
  {
        "name": "<@safe_include "profanities_response_embed_false_profanities_field_title"/>",
        "value": "${falsePositives?c}",
        "inline": "true"
  }<#if recentPositiveReports?size gt 0>
  ,
  {
    "name": "​",
    "value": "​",
    "inline": "true"
  },
  <#list recentPositiveReports as report><#assign report=report>
  {
    <#assign reportIndex>${report?index + 1}</#assign>
    "name": "<@safe_include "profanities_response_embed_true_profanities_report_field_value"/>",
    "value": "[<@safe_include "profanities_response_embed_true_profanities_link_field_title"/>](${report.jumpUrl})",
    "inline": "true"
  }<#sep>,</#list>
  </#if>
  ]
}