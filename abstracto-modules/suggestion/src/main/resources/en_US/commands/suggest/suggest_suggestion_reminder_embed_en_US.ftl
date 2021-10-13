<#include "format_instant">
{
  <#assign suggestionId=suggestionId>
  <#assign suggestionDate><@format_instant_date_time instant=suggestionCreationDate/></#assign>
  <#assign suggestionLink=suggestionMessage.jumpUrl>
  <#assign agreements=suggestionInfo.agreements>
  <#assign disagreements=suggestionInfo.disagreements>
  <#include "abstracto_color"/>,
  "description": "<@safe_include "suggestionReminderJob_description"/>"
}