{
  <#include "member_author">
  <@member_author member=memberInfo/>,
  <#include "abstracto_color">,
  "thumbnail":  "${memberInfo.user.effectiveAvatarUrl}",
  "fields": [
  {
        "name": "<@safe_include "userInfo_response_embed_id_field_title"/>",
        "value": "${memberInfo.user.id}",
        "inline": "true"
  },
  <#if memberInfo.nickname?has_content>
  {
        "name": "<@safe_include "userInfo_response_embed_nickname_field_title"/>",
        "value": "${memberInfo.nickname?json_string}",
        "inline": "true"
  },
  </#if>
  {
        "name": "<@safe_include "userInfo_response_embed_status_field_title"/>",
        "value": "${memberInfo.onlineStatus.key}",
        "inline": "true"
  },
  {
        "name": "<@safe_include "userInfo_response_embed_joined_field_title"/>",
        "value": "${formatDate(memberInfo.timeJoined, "yyyy-MM-dd HH:mm:ss zz")}",
        "inline": "true"
  },
  {
        "name": "<@safe_include "userInfo_response_embed_registered_field_title"/>",
        "value": "${formatDate(memberInfo.timeCreated, "yyyy-MM-dd HH:mm:ss zz")}",
        "inline": "true"
  }
  <#if memberInfo.activities?size gt 0>
  ,
  {
        "name": "<@safe_include "userInfo_response_embed_activity_field_title"/>",
        "value": "<#list memberInfo.activities as activity>${activity.type?json_string}<#sep>, </#list>",
        "inline": "true"
  }
  </#if>
  ]
}