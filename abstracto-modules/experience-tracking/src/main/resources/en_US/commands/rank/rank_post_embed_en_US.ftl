{
  <#include "member_author">
  <@member_author member=member/>,
  <#include "success_color">,
  "fields": [
    {
        "name": "<@safe_include "rank_xp_field_title"/>",
        "value": "${rankUser.experience.experience}",
        "inline": "true"
    },
    {
        "name": "<@safe_include "rank_level_field_title"/>",
        "value": "${rankUser.experience.currentLevel.level}",
        "inline": "true"
    },
    {
        "name": "<@safe_include "rank_messages_field_title"/>",
        "value": "${rankUser.experience.messageCount}",
        "inline": "true"
    },
    {
        "name": "<@safe_include "rank_to_next_level_field_title"/>",
        "value": "${experienceToNextLevel}",
        "inline": "true"
    },
    {
        "name": "<@safe_include "rank_rank_field_title"/>",
        "value": "${rankUser.rank}",
        "inline": "true"
    }
  ]
}