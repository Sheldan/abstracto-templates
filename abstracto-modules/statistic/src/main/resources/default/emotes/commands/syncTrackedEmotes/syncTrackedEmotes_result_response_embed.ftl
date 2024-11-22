{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "syncTrackedEmotes_result_response_embed_title"/>"
            },
            <#include "statistic_color">,
            <#assign emotesAdded=emotesAdded>
            <#assign emotesDeleted=emotesMarkedDeleted>
            "description": "<@safe_include "syncTrackedEmotes_result_response_description"/>"
        }
    ]
}