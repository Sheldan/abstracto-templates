{
    <#assign messageLink=message.jumpUrl>
    "components": [
        {
            "type": "textDisplay",
            "content": "<@safe_include "message_embed_cleanup_replacement_text"/>"
        }
    ],
    "messageConfig": {
        "useComponentsV2": true
    }
}