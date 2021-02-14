<#assign featureName><#include "feature_${model.featureConfig.feature.key}"></#assign>
<#assign featureKey>${model.featureConfig.feature.key}</#assign>
<#assign requiredModes><#list command.featureModeLimitations as mode>`${mode.key}`<sep>, </#list></#assign>
<#include "feature_mode_not_correct_exception_text">