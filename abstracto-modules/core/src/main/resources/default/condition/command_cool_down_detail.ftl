<#include "format_instant">
<#assign executeIn><@format_instant_relative instant=model.reason.executeAt/></#assign>
<#assign reason>${model.reason.reason}</#assign>
<#include "command_cool_down_detail_text">