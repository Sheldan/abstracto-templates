<#assign text><#if model.templateKey?has_content>
<#assign exceptionModel=model.templateModel>
<#include "${model.templateKey}"><#else>${model.message}</#if></#assign><#include "feature_setup_step_exception_text">