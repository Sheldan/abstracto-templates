{
  <#assign reason=warnReason>
  <#assign warningDate>${formatDate(warnDate, "yyyy-MM-dd HH:mm:ss zz")}</#assign>
  <#assign remainingWarningsCount=remainingWarningsCount>
  "additionalMessage": "<@safe_include "warnDecay_member_notification_text"/>"
}