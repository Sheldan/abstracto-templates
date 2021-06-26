{
  <#include "user_detail">
  <#include "abstracto_color">,
  "description" : "<@safe_include "userUnBanned_description"/>",
  "fields": [
    {
      "name": "<@safe_include "userUnBanned_field_title_un_banned_user"/>",
      "value": "<@user_detail user=unBannedUser/>"
    }
    <#if unBanningUser??>
    ,
    {
        "name": "<@safe_include "userUnBanned_field_title_un_banning_user"/>",
        "value": "<@user_detail user=unBanningUser/>"
    }
    </#if>
  ]
}