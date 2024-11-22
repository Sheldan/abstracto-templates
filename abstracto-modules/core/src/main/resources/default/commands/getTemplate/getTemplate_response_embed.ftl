{
<#assign templateKey=templateKey>
    "additionalMessage": "<@safe_include "getTemplate_response_embed_text"/>",
    "files": [
        {
            "fileName": "${templateKey}.ftl",
            "fileContent": "${templateContent?json_string}"
        }
    ]
}