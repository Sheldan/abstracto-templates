{
    "id": "${modalId}",
    "title": "<@safe_include "moderationAction_ban_modal_title"/>",
    "textInputs": [
        {
            "placeHolder": "<@safe_include "moderationAction_ban_modal_reason_placeholder"/>",
            "id": "${reasonComponentId}",
            "position": 1,
            "label": "<@safe_include "moderationAction_ban_modal_reason_label"/>",
            "style": "paragraph",
            "maxLength": 2000,
            "required": false
        },
        {
            "placeHolder": "<@safe_include "moderationAction_ban_modal_duration_placeholder"/>",
            "id": "${durationComponentId}",
            "position": 2,
            "label": "<@safe_include "moderationAction_ban_modal_duration_label"/>",
            "style": "short",
            "maxLength": 50,
            "required": false
        }
    ]
}