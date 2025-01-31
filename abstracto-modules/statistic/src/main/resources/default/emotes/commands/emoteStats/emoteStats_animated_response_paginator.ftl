{
    <#assign exitOnly=innerModel.animatedEmotes?size lt 41/>
    "embedConfigs": [
        <#assign chunks=innerModel.animatedEmotes?chunk(40)>
        <#list chunks as row><#assign counter=row?index><#assign row=row><#include "emoteStats_animated_response_entry"><#sep>,</#list>
    ],
    "timeoutSeconds": 120,
    "restrictUser": true
}
