{
  <#assign suggestionId=suggestionId>
  <#assign suggestionDate>${formatDate(suggestionCreationDate, "yyyy-MM-dd HH:mm:ss zz")}</#assign>
  <#assign suggestionLink=suggestionMessage.jumpUrl>
  <#include "abstracto_color"/>,
  "description": "<@safe_include "suggestionReminderJob_description"/>"
}