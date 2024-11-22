<#include "format_instant">
{
    "embeds": [
        {
            "title": {
                "title": "<@safe_include "poll_server_message_title"/>"
            },
            <#assign formattedEndDate><@format_instant_relative instant=endDate/></#assign>
            "description": "<@safe_include "poll_server_description_info"/><#list options as option><#assign option=option><@safe_include "poll_message_option_display"/><#sep>\n</#list>"
        }
    ],
    "selectionMenus": [
        {
            "position": 1,
            "id": "${selectionMenuId}",
            "type": "STRING",
            "minValues": 1,
            <#if allowMultiple>
                "maxValues": ${options?size},
            <#else>
                "maxValues": 1,
            </#if>
            "menuEntries": [
                <#list options as option>
                {
                    "value": "${option.value}",
                    "label": "${option.label}",
                    "description": "${option.description}"
                }
                <#sep>,</#list>
            ]
        }
    ]
    <#if allowAdditions && options?size lt 20>,
    "buttons": [
        {
            "label": "<@safe_include "poll_message_button_add_option_label"/>",
            "position": 2,
            "id": "${addOptionButtonId}",
            "buttonStyle": "secondary",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
    </#if>
}