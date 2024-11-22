{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "posttarget_embed_title"/>"
            },
            <#include "success_color">,
            "description": "
<#list postTargets as postTarget><#assign postTarget=postTarget/>
<#assign postTargetName>${postTarget.postTarget.name?json_string}</#assign>
<#assign statusIndicator>${postTarget.disabled?string('❌', '✅')}</#assign>
<#assign channelMention><#if postTarget.channel?has_content>${postTarget.channel.asMention?json_string}<#else><@safe_include "posttarget_no_channel"/></#if></#assign>
<@safe_include "posttarget_post_target_text"/>

<#else>
<@safe_include "posttarget_no_post_targets_found"/>
</#list>
"
        }
    ]
}