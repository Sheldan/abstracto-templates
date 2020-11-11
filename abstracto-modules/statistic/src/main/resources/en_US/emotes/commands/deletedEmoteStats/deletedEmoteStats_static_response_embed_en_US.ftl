{
  "title": {
    "title": "<@safe_include "deletedEmoteStats_static_emotes_title"/>"
  },
  <#include "statistic_color">,
  "description": "<#list staticEmotes as emote>`${emote.trackedEmote.emoteName}:${emote.trackedEmote.trackedEmoteId.emoteId?c}`x${emote.result.amount}<#sep>, </#list>"
}