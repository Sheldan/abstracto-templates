{
<#assign exitOnly=innerModel.customCommands?size lt 5/>
"embedConfigs": [
<#assign chunks=innerModel.customCommands?chunk(4)>
<#list chunks as row><#assign counter=row?index><#assign row=row><#include "listCustomCommands_response_entry"><#sep>,</#list>
],
"timeoutSeconds": 120,
"restrictUser": true
}