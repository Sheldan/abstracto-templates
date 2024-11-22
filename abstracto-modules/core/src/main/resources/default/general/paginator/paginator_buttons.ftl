{
    "label": "<@safe_include "paginator_exit_button_label"/>",
    "id": "${exitButtonId}",
    "buttonStyle": "secondary",
    "emoteMarkdown": "⏹️",
    "metaConfig": {
      "persistCallback": false
    }
}
<#if !exitOnly>
,
{
    "label": "<@safe_include "paginator_start_button_label"/>",
    "id": "${startButtonId}",
    "buttonStyle": "secondary",
    <#if counter = 0>
        "disabled": true,
    </#if>
    "emoteMarkdown": "⏮",
    "metaConfig": {
      "persistCallback": false
    }
},
{
    "label": "<@safe_include "paginator_previous_button_label"/>",
    "id": "${previousButtonId}",
    "buttonStyle": "secondary",
    <#if counter = 0>
        "disabled": true,
    </#if>
    "emoteMarkdown": "◀️",
    "metaConfig": {
        "persistCallback": false
    }
},
{
    "label": "<@safe_include "paginator_next_button_label"/>",
    "id": "${nextButtonId}",
    "buttonStyle": "secondary",
    <#if counter = chunks?size -1>
        "disabled": true,
    </#if>
    "emoteMarkdown": "▶",
    "metaConfig": {
        "persistCallback": false
    }
},
{
     "label": "<@safe_include "paginator_last_button_label"/>",
     "id": "${lastButtonId}",
     "buttonStyle": "secondary",
     <#if counter = chunks?size -1>
         "disabled": true,
     </#if>
     "emoteMarkdown": "⏭",
     "metaConfig": {
         "persistCallback": false
     }
}
</#if>