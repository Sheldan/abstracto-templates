<#macro safe_include template_key><#assign rendered><#include "${template_key}"></#assign>${rendered?js_string}</#macro>
