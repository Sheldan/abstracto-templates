<#assign featureName=model.featureEnum.key/>
<#assign featureModes><#list model.requiredModes as mode>${mode.key}<#sep>,</#list></#assign>
<#include "incorrect_feature_mode_exception_text">