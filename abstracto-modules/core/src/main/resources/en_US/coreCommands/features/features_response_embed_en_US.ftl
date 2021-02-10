{
  "title": {
    "title": "<@safe_include "features_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "
<#list features as feature>
${feature.featureFlag.enabled?string('✅', '❌')} **<@safe_include "${feature.featureConfig.feature.key}_feature"/>** <@safe_include "feature_embed_key"/>: `${feature.featureConfig.feature.key}`
</#list>
<#list defaultFeatures as defaultFeature>
${defaultFeature.featureFlagProperty.enabled?string('✅', '❌')} **<@safe_include "${defaultFeature.featureConfig.feature.key}_feature"/>** <@safe_include "features_embed_key"/>: `${defaultFeature.featureConfig.feature.key}` (<@safe_include "features_default_marker"/>)
</#list>
"
}