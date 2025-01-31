{
    <#assign exitOnly=innerModel.staticEmotes?size lt 41/>
    "embedConfigs": [
        <#assign chunks=innerModel.staticEmotes?chunk(40)>
        <#list chunks as row><#assign counter=row?index><#assign row=row><#include "emoteStats_static_response_entry"><#sep>,</#list>
    ],
    "timeoutSeconds": 120,
    "restrictUser": true
}
