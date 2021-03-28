{
  <#include "abstracto_color">,
  "description": "${definition.definition?json_string}",
  "fields": [
      {
            "name": "<@safe_include "urban_search_command_response_embed_field_title_author"/>",
            "value": "${definition.author?json_string}",
            "inline": "true"
      },
      {
            "name": "<@safe_include "urban_search_command_response_embed_field_title_up_votes"/>",
            "value": "${definition.upvoteCount}",
            "inline": "true"
      },
      {
            "name": "<@safe_include "urban_search_command_response_embed_field_title_downvotes"/>",
            "value": "${definition.downVoteCount}",
            "inline": "true"
      },
      {
            "name": "<@safe_include "urban_search_command_response_embed_field_title_link"/>",
            "value": "[<@safe_include "urban_search_command_response_embed_field_value_jump"/>](${definition.url?json_string})",
            "inline": "true"
      },
      {
            "name": "<@safe_include "urban_search_command_response_embed_field_title_example"/>",
            "value": "${definition.example?json_string}"
      }
  ],
  "timeStamp": "${definition.creationDate}"
}