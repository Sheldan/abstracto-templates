{
    "embeds": [
        {
            "description": "<#list row as warning><#assign warning=warning><@safe_include "warnings_warn_entry"/>\n</#list>"
        }
    ],
    "buttons": [
        <#include "paginator_buttons">
    ]
}