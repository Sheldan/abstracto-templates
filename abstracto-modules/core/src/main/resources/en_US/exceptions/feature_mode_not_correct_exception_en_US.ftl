<#assign featureName><#include "${model.featureConfig.feature.key}_feature"></#assign>
<#assign featureKey>${model.featureConfig.feature.key}</#assign>
<#assign requiredModes><#list command.featureModeLimitations as mode>`${mode.key}`<sep>, </#list></#assign>
<#include "feature_mode_not_correct_exception_text">