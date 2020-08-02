{
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "<#include "assignable_role_places_overview_description">:
  <#list places as place>`<#include "assignable_role_places_overview_place">`<#sep>, <#else> <#include "assignable_role_places_overview_no_places"></#list>
  "
}