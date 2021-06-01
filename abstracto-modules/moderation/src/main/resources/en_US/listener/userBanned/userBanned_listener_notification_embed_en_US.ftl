{
  <#include "user_detail">
  <#include "abstracto_color">,
  "description" : "User was banned.",
  "fields": [
    {
      "name": "Banned user",
      "value": ""<@user_detail user=bannedUser/>"
    }
    <#if banningUser??>
    ,
    {
        "name": "Banning user",
        "value": "<@user_detail user=banningUser/>"
    }
    </#if>
    <#if reason??>
    ,
    {
        "name": "reason",
        "value": "${reason}"
    }
    </#if>
  ]
}