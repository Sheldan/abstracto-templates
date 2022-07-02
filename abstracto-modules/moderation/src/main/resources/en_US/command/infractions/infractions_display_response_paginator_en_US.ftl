{
<#assign exitOnly=innerModel.entries?size lt 5/>
 "embedConfigs": [
    <#assign chunks=innerModel.entries?chunk(4)>
    <#list chunks as row><#assign counter=row?index><#assign row=row><#include "infractions_response_entry"><#sep>,</#list>
 ],
 "timeoutSeconds": 120,
 "restrictUser": true
}