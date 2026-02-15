<#function fits value>
    <#return value != 1 && value != 0>
</#function>
<#if fits(days)><#include "duration_days"><#elseif days = 1 || days = -1><#include "duration_day"></#if> <#if fits(hours)><#include "duration_hours"><#elseif hours = 1 || hours = -1><#include "duration_hour"></#if> <#if fits(minutes)><#include "duration_minutes"><#elseif minutes = 1 || minutes = -1><#include "duration_minute"></#if> <#if fits(seconds) || (seconds = 0 && days = 0 && hours = 0 && minutes = 0)><#include "duration_seconds"><#elseif seconds = 1  || seconds = -1><#include "duration_second"></#if>