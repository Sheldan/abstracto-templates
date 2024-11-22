emoteId,serverId,date,count,animated,external,deleted
<#list emotes as emote>${emote.emoteId.emoteId?c},${emote.emoteId.serverId?c},${formatDate(emote.emoteId.useDate, "yyyy-MM-dd")},${emote.amount},${emote.trackedEmote.animated?string('1', '0')},${emote.trackedEmote.external?string('1', '0')},${emote.trackedEmote.deleted?string('1', '0')}
</#list>