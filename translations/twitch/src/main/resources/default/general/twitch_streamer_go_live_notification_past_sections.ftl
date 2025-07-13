They played:
<#list pastSections as section>
<@format_instant_date_time instant=section.startedAt/> `${section.gameName}` - `${section.title}`
</#list>