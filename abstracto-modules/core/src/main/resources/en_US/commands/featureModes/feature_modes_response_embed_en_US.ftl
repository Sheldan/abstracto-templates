{
  "title": {
    "title": "<@safe_include "feature_modes_embed_title"/>"
  },
  <#include "abstracto_color">,
  "description": "
<#list featureModes as featureMode>
<#assign featureName><@safe_include "feature_${featureMode.featureConfig.feature.key}"/></#assign>
<#assign featureKey=featureMode.featureConfig.feature.key>
<#assign featureModeName=featureMode.featureMode.featureMode>
<#assign featureModeEnabled>${featureMode.featureMode.enabled?string('✅', '❌')}</#assign>
<#assign defaultText><@safe_include "feature_modes_embed_is_default"/></#assign>
<#assign fromDefault>${featureMode.isDefaultValue?string('(' + defaultText + ')', '')}</#assign>
<#include "feature_modes_embed_feature_mode_display">

<#else><@safe_include "feature_modes_embed_no_feature_modes_available"/></#list>
"
}