<#macro default_template_if_null value="" template_key=""><#if value?has_content>${value}<#else><#include "${template_key}"></#if></#macro>
