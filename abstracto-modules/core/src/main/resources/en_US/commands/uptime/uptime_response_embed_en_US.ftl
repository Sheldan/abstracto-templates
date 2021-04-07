{
  <#include "abstracto_color">,
  "fields": [
      {
        "name": "<@safe_include "uptime_response_embed_start_date_field_title"/>",
        <#assign startDate>${formatDate(startDate, "yyyy-MM-dd HH:mm:ss z")}</#assign>
        "value": "${startDate}"
      },
      {
        "name": "<@safe_include "uptime_response_embed_uptime_field_title"/>",
        <#assign uptime>${fmtDuration(uptime)}</#assign>
        "value": "${uptime}"
      }
  ]
}