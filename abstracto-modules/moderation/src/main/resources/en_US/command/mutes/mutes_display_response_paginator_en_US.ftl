{
<#assign exitOnly=innerModel.mutes?size lt 6/>
 "embedConfigs": [
    <#assign chunks=innerModel.mutes?chunk(5)>
    <#-- we have to separate the chunk, so we can re-use it to disable the last buttons, and also we have to assign the for loop value, -->
    <#-- so it available in sub templates, also the counter needs to be defined, else it doesnt the detect its a loop variable it seems  -->
    <#list chunks as row><#assign row=row><#include "mutes_response_entry"><#sep>,</#list>
 ],
 "timeoutSeconds": 120,
 "restrictUser": true
}