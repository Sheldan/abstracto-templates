{
<#assign exitOnly=innerModel.warnings?size lt 5/>
 "embedConfigs": [
    <#assign chunks=innerModel.warnings?chunk(4)>
    <#list chunks as row><#assign counter=row?index><#assign row=row><#include "warnings_response_entry"><#sep>,</#list>
 ],
 "timeoutSeconds": 120,
 "restrictUser": true
}