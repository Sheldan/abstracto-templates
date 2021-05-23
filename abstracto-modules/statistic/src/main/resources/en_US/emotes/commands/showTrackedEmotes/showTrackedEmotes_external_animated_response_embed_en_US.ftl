{
  "title": {
    "title": "<@safe_include "showTrackedEmotes_external_animated_tracked_emotes_title"/>"
  },
  <#include "statistic_color">,
  "description": "<#list externalAnimatedEmotes as emote>`${emote.emoteName}:${emote.trackedEmoteId.id?c}`<#if !emote.trackingEnabled>(<#include "showTrackedEmotes_emote_tracking_disabled">)</#if><#sep> </#list>"
}