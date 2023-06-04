{
    "id": "${modalId}",
    "title": "<@safe_include "poll_server_add_option_modal_title"/>",
    "textInputs": [
        {
            "placeHolder": "<@safe_include "poll_server_add_option_modal_label_placeholder"/>",
            "id": "${labelInputComponentId}",
            "position": 1,
            "label": "<@safe_include "poll_server_add_option_modal_label_label"/>",
            "style": "paragraph",
            "maxLength": 100,
            "required": true
        },
        {
            "placeHolder": "<@safe_include "poll_server_add_option_modal_description_placeholder"/>",
            "id": "${descriptionInputComponentId}",
            "position": 2,
            "label": "<@safe_include "poll_server_add_option_modal_description_label"/>",
            "style": "paragraph",
            "maxLength": 100,
            "required": false
        }
    ]
}