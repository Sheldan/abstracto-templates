{
  "title": {
    "title": "<@safe_include "showTrackedEmotes_deleted_animated_tracked_emotes_title"/>"
  },
  <#include "statistic_color">,
  "description": "<#list deletedAnimatedEmotes as emote>`${emote.emoteName}:${emote.trackedEmoteId.emoteId?c}`<#if !emote.trackingEnabled>(<#include "showTrackedEmotes_emote_tracking_disabled">)</#if><#sep>, </#list>"
}