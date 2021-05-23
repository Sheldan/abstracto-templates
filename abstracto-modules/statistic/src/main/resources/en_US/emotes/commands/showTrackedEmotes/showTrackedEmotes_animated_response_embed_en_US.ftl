{
  "title": {
    "title": "<@safe_include "showTrackedEmotes_animated_tracked_emotes_title"/>"
  },
  <#include "statistic_color">,
  "description": "<#list animatedEmotes as emote><#if emote.emote?has_content>${emote.emote.asMention}<#if !emote.trackedEmote.trackingEnabled>(<#include "showTrackedEmotes_emote_tracking_disabled">)</#if><#sep> </#if></#list>"
}