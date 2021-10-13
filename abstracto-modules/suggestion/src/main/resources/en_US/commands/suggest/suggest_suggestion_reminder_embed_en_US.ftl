{
  <#assign suggestionId=suggestionId>
  <#assign suggestionDate>${formatDate(suggestionCreationDate, "yyyy-MM-dd HH:mm:ss zz")}</#assign>
  <#assign suggestionLink=suggestionMessage.jumpUrl>
  <#assign agreements=suggestionInfo.agreements>
  <#assign disagreements=suggestionInfo.disagreements>
  <#include "abstracto_color"/>,
  "description": "<@safe_include "suggestionReminderJob_description"/>"
}