<#list actionConfigs as actionConfig><#assign actionConfig=actionConfig/>
<#assign param=actionConfig.templateModel>
<@safe_include "${actionConfig.templateName}"/>

</#list>