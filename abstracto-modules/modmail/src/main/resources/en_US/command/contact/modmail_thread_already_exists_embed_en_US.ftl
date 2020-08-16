{
  <#include "member_author">
  <@member_author member=member/>,
  <#include "modmail_color">,
  "description": "<@safe_include "modmail_thread_already_exists"/>",
  "fields": [
     {
        "name": "<@safe_include "modmail_existing_thread_link_field_title"/>",
        "value": "[<@safe_include "modmail_existing_thread_link_content_display_text"/>](${threadUrl})"
     }
  ]
}
