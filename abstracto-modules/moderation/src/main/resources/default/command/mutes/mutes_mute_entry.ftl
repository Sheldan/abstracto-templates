<#include "format_instant">
<#assign muteId>${mute.muteId}</#assign>
<#assign reason>${mute.reason}</#assign>
<#assign mutedUserText><#if mute.mutedUser.memberMention??>${mute.mutedUser.memberMention}(${mute.mutedUser.userId?c})<#else>${mute.mutedUser.userId?c}</#if></#assign>
<#assign mutingUserText><#if mute.mutingUser.memberMention??>${mute.mutingUser.memberMention}(${mute.mutedUser.userId?c})<#else>${mute.mutingUser.userId?c}</#if></#assign>
<#assign muteDate><@format_instant_date_time instant=mute.muteDate/></#assign>
<#assign muteEnded>${mute.muteEnded?string('✅', '❌')}</#assign>
<#assign muteDuration>${fmtDuration(mute.muteDuration)}</#assign>

<#include "mutes_mute_entry_text">