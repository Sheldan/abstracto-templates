{
    "embeds": [
        {
            <#macro actionDisplay action>
                <#assign parameters = action.parameters?eval_json>
                <#assign level=action.level>
                <#assign actionDescription><@safe_include "showLevelActions_action_${action.actionKey}"/></#assign>
                <#assign actionKey=action.actionKey/>
                <#assign actionParameter><@safe_include "showLevelActions_action_${action.actionKey}_config"/></#assign>
                <#if action.member??>
                    <#assign memberdisplay=action.member.memberMention/>
                </#if>
                <@safe_include "showLevelActions_action_description"/>

            </#macro>
            "description": "<#list actions as action><@actionDisplay action=action/></#list>"
        }
    ]
}