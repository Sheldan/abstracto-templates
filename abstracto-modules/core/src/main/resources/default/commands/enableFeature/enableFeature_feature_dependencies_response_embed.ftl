{
    "embeds": [
        {
            <#include "abstracto_color">,
            "description": "<#assign featureString>${features?join(", ")}</#assign><#include "enableFeature_feature_dependencies_text"><#if validationText?has_content>
    ${validationText}</#if>"
        }
    ]
}