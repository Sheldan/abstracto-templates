{
    <#assign exitOnly=innerModel.animatedEmotes?size lt 1/>
    "embedConfigs": [
        <#assign chunks=innerModel.animatedEmotes?chunk(2)>
        <#list chunks as row><#assign counter=row?index><#assign row=row><#include "deletedEmoteStats_animated_response_entry"><#sep>,</#list>
    ],
    "timeoutSeconds": 120,
    "restrictUser": true
}
