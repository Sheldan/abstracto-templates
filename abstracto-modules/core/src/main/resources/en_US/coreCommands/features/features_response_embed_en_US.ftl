{
  "title": {
    "title": "<@safe_include "features_embed_title"/>"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "
<#list features as feature>
${feature.featureFlag.enabled?string('✅', '❌')} **<@safe_include "${feature.featureConfig.feature.key}_feature"/>** <@safe_include "feature_embed_key"/>: `${feature.featureConfig.feature.key}`
</#list>
"
}