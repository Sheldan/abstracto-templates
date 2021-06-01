{
  <#include "user_detail">
  <#include "abstracto_color">,
  "description" : "User was un-banned.",
  "fields": [
    {
      "name": "Un-Banned user",
      "value": "<@user_detail user=unBannedUser/>"
    }
    <#if unBanningUser??>
    ,
    {
        "name": "Un-banning user",
        "value": "<@user_detail user=unBanningUser/>"
    }
    </#if>
  ]
}