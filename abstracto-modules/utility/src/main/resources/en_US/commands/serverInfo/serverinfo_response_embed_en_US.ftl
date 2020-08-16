{
  "title": {
    "title": "<#assign name=guild.name><@safe_include "serverinfo_embed_title"/>"
  },
  <#include "abstracto_color">,
  "fields": [
      {
            "name": "<@safe_include "serverinfo_embed_id_field_title"/>",
            "value": "${guild.id}",
            "inline": "true"
      },
      {
            "name": "<@safe_include "serverinfo_embed_owner_field_title"/>",
            "value": "<@member_user_name member=guild.owner/>",
            "inline": "true"
      },
      {
            "name": "<@safe_include "serverinfo_embed_members_field_title"/>",
            "value": "${guild.memberCount}",
            "inline": "true"
      },
      {
            "name": "<@safe_include "serverinfo_embed_role_count_field_title"/>",
            "value": "${guild.roles?size}",
            "inline": "true"
      },
      {
            "name": "<@safe_include "serverinfo_embed_created_field_title"/>",
            "value": "${guild.timeCreated}",
            "inline": "true"
      },
      ${safeFieldLength(guild.emotes, 'emote_mention', 'serverinfo_embed_emotes_field_title', 'false')},
      {
            "name": "<@safe_include "serverinfo_embed_features_field_title"/>",
            "value": "<#list guild.features as feature>${feature}<#else><@safe_include "serverinfo_embed_features_no_features"/></#list>",
            "inline": "true"
      }
  ]
}