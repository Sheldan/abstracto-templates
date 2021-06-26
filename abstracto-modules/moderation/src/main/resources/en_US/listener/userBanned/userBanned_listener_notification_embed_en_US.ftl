{
  <#include "user_detail">
  <#include "abstracto_color">,
  "description" : "<@safe_include "userBanned_description"/>",
  "fields": [
    {
      "name": "<@safe_include "userBanned_field_title_banned_user"/>",
      "value": "<@user_detail user=bannedUser/>"
    }
    <#if banningUser??>
    ,
    {
        "name": "<@safe_include "userBanned_field_title_banning_user"/>",
        "value": "<@user_detail user=banningUser/>"
    }
    </#if>
    <#if reason??>
    ,
    {
        "name": "<@safe_include "userBanned_field_title_reason"/>",
        "value": "${reason}"
    }
    </#if>
  ]
}