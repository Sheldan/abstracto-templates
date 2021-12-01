<#include "format_instant">
<#assign muteId>${mute.mute.muteId.id}</#assign>
<#assign reason>${mute.mute.reason}</#assign>
<#assign mutedUserText><#if mute.mutedUser.member??>${mute.mutedUser.member.asMention}(${mute.mutedUser.member.user.id})<#else>${mute.mutedUser.userId?c}</#if></#assign>
<#assign mutingUserText><#if mute.mutingUser.member??>${mute.mutingUser.member.asMention}(${mute.mutingUser.member.user.id})<#else>${mute.mutingUser.userId?c}</#if></#assign>
<#assign muteDate><@format_instant_date_time instant=mute.mute.muteDate/></#assign>
<#assign muteEnded>${mute.mute.muteEnded?string('✅', '❌')}</#assign>
<#assign muteDuration>${fmtDuration(mute.muteDuration)}</#assign>

<#include "mutes_mute_entry_text">