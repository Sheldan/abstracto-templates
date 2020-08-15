{
<#assign warnCount>${warnings?size}</#assign>
  "headerText": "<@safe_include "warnings_header_text"/>",
   "items": [
   <#list warnings as warning><#assign warning=warning/>"<@safe_include "warnings_warn_entry"/>"<#sep>,</#list>
   ]
}