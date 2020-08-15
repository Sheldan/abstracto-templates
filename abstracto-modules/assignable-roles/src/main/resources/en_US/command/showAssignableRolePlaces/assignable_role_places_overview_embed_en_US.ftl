{
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "<@safe_include "assignable_role_places_overview_description"/>:
  <#list places as place>`<#assign place=place/><@safe_include "assignable_role_places_overview_place"/>`<#sep>, <#else> <@safe_include "assignable_role_places_overview_no_places"/></#list>
  "
}