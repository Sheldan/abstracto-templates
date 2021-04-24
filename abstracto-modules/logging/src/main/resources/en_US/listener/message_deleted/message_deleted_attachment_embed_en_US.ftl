{
  "imageUrl": "${imageUrl}",
  "fields": [
  {
    "name": "<@safe_include "messageDeleted_attachment_link_field_title"/>",
    "value": "[<@safe_include "messageDeleted_attachment_link_display_text"/>](${imageUrl})"
  }
  ],
  "footer": {
    "text": "<@safe_include "messageDeleted_attachment_footer"/> #${counter}"
  }
}