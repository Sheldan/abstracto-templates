{
    <#assign exitOnly=innerModel.animatedEmotes?size lt 21/>
    "embedConfigs": [
        <#assign chunks=innerModel.animatedEmotes?chunk(20)>
        <#list chunks as row><#assign counter=row?index><#assign row=row><#include "externalEmoteStats_animated_response_entry"><#sep>,</#list>
    ],
    "timeoutSeconds": 120,
    "restrictUser": true
}
