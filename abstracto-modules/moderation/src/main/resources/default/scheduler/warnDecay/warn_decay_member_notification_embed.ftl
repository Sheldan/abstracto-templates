<#include "format_instant">
{
  <#assign reason=warnReason>
  <#assign warningDate><@format_instant_date_time instant=warnDate/></#assign>
  <#assign remainingWarningsCount=remainingWarningsCount>
  "additionalMessage": "<@safe_include "warnDecay_member_notification_text"/>"
}