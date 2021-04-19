{
  <#include "abstracto_color">,
  <#assign uptime>${fmtDuration(uptime)}</#assign>
  "description": "${uptime}",
  "footer": {
    "text": "<@safe_include "uptime_response_embed_start_date_field_title"/>"
  },
  "timeStamp": "${startDate}"
}