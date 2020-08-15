{
  "author": {
    "name": "${member.effectiveName?js_string}",
    "avatar":  "${member.user.effectiveAvatarUrl}"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
   "title": {
      "title": "<@safe_include "reminders_reminders_embed_title"/>"
    },
   "fields": [
       <#list reminders as reminder><#assign reminder=reminder/>
           {
           <#assign id>${reminder.id}</#assign>
            "name": "<@safe_include "reminders_reminder_field_title"/>",
            "value": "<@safe_include "reminders_due_on"/>"
           }
       <#sep>,
       </#list>
   ]
}