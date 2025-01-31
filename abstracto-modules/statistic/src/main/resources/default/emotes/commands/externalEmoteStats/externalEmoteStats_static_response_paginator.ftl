{
    <#assign exitOnly=innerModel.staticEmotes?size lt 21/>
    "embedConfigs": [
        <#assign chunks=innerModel.staticEmotes?chunk(20)>
        <#list chunks as row><#assign counter=row?index><#assign row=row><#include "externalEmoteStats_static_response_entry"><#sep>,</#list>
    ],
    "timeoutSeconds": 120,
    "restrictUser": true
}
