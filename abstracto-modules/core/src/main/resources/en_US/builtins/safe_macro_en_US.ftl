<#macro safe_include template_key><#assign rendered><#include "${template_key}"></#assign>${rendered?json_string}</#macro>
