{
    <#assign exitOnly=innerModel.keys?size lt 6/>
    "embedConfigs": [
    <#assign chunks=innerModel.keys?chunk(5)>
    <#list chunks as row><#assign counter=row?index><#assign row=row><#include "showGiveawayKeys_response_entry"><#sep>,</#list>
    ],
    "timeoutSeconds": 120,
    "restrictUser": true
}