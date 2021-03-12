{
  <#include "member_author">
  <@member_author member=member/>,
  <#include "abstracto_color">,
   "title": {
      "title": "<@safe_include "reminders_reminders_embed_title"/>"
    },
   "fields": [
       <#list reminders as reminder><#assign reminder=reminder/>
           {
           <#assign id>${reminder.id}</#assign>
           <#assign reminderTargetDate>${formatDate(reminder.targetDate,"yyyy-MM-dd HH:mm:ss")}</#assign>
           <#assign reminderText=reminder.text/>
            "name": "<@safe_include "reminders_reminder_field_title"/>",
            "value": "<@safe_include "reminders_due_on"/>"
           }
       <#sep>,
       </#list>
   ]
}