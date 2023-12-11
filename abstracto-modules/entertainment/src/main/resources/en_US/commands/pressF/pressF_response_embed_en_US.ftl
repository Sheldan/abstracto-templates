{
    <#assign text=text?json_string>
    "additionalMessage": "<@safe_include "pressF_response_text"/>",
    "buttons": [
        {
            "emoteMarkdown": "<@safe_include "pressF_response_press_button_emote"/>",
            "label": "<@safe_include "pressF_response_press_button_label"/>",
            "id": "${pressFComponentId}",
            "buttonStyle": "secondary",
            "metaConfig": {
                "persistCallback": false
            }
        }
    ]
}