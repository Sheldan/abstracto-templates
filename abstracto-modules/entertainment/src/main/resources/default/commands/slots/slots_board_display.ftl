<#list rows as row><#assign row=row>
<#if row?index = 1>><#else>  </#if><#list row as item><#assign item=item>${item}</#list>
</#list>