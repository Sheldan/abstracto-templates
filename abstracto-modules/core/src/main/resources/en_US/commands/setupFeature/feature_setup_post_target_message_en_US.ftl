<#assign currentTarget><#if currentTextChannel??>${currentTextChannel.asMention}<#else><@safe_include "feature_setup_post_target_no_channel_set"/></#if></#assign>
<@safe_include "feature_setup_posttarget_${postTargetKey}"/>