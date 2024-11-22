<#macro format_instant instant><t:${instant.epochSecond?c}></#macro>
<#macro format_instant_time instant><t:${instant.epochSecond?c}:t></#macro>
<#macro format_instant_long_time instant><t:${instant.epochSecond?c}:T></#macro>
<#macro format_instant_date instant><t:${instant.epochSecond?c}:d></#macro>
<#macro format_instant_long_date instant><t:${instant.epochSecond?c}:D></#macro>
<#macro format_instant_date_time instant><t:${instant.epochSecond?c}:f></#macro>
<#macro format_instant_long_date_time instant><t:${instant.epochSecond?c}:F></#macro>
<#macro format_instant_relative instant><t:${instant.epochSecond?c}:R></#macro>