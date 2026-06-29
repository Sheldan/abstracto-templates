{
<#assign exitOnly=innerModel.quickReplies?size lt 5/>
"embedConfigs": [
<#assign chunks=innerModel.quickReplies?chunk(4)>
<#list chunks as row><#assign counter=row?index><#assign row=row><#include "listQuickReplies_response_entry"><#sep>,</#list>
],
"timeoutSeconds": 120,
"restrictUser": true
}