{
  "title": {
      "title": "<@safe_include "modmail_closing_notification_title"/>"
    },
  <#include "modmail_color">,
  <#assign messageCount>${closedThread.messages?size}</#assign>
  <#assign user>user</#assign>
  <#assign startDate>${formatDate(closedThread.created,"yyyy-MM-dd HH:mm:ss zz")}</#assign>
  <#assign duration>${fmtDuration(duration)}</#assign>
  "description": "<@safe_include "close_closing_description"/>"
}
