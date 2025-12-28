<#include "getConfig_display_macro">
{
<#assign exitOnly=innerModel.values?size lt 10/>
 "embedConfigs": [
    <#assign chunks=innerModel.values?chunk(9)>
    <#list chunks as row><#assign counter=row?index><#assign row=row><#include "getConfig_response_embed"><#sep>,</#list>
 ],
 "timeoutSeconds": 120,
 "restrictUser": true
}