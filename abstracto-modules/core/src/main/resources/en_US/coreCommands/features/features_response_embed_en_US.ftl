{
  "title": {
    "title": "<@safe_include "features_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "
<#list features as feature>
${feature.featureFlag.enabled?string('✅', '❌')} **<@safe_include "${feature.featureConfig.feature.key}_feature"/>** <@safe_include "feature_embed_key"/>: `${feature.featureConfig.feature.key}`
</#list>
"
}