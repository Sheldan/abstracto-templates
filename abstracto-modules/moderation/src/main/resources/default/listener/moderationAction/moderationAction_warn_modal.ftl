{
    "id": "${modalId}",
    "title": "<@safe_include "moderationAction_warn_modal_title"/>",
    "textInputs": [
        {
            "placeHolder": "<@safe_include "moderationAction_warn_modal_reason_placeholder"/>",
            "id": "${reasonComponentId}",
            "position": 1,
            "label": "<@safe_include "moderationAction_warn_modal_reason_label"/>",
            "style": "paragraph",
            "maxLength": 2000,
            "required": false
        }
    ]
}