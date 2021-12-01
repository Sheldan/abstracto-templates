{
<#assign exitOnly=innerModel.warnings?size lt 6/>
 "embedConfigs": [
    <#assign chunks=innerModel.warnings?chunk(5)>
    <#list chunks as row><#assign counter=row?index><#assign row=row><#include "warnings_response_entry"><#sep>,</#list>
 ],
 "timeoutSeconds": 120,
 "restrictUser": true
}