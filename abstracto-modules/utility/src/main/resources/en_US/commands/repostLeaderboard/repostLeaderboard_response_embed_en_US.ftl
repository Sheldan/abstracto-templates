{
<#macro userDisplay user>
  ${user.rank} | <@member_user_name member=user.member/> | ${user.count}
</#macro>
  <#include "member_author">
  <#include "success_color">,
  "description": "
          <@safe_include "repostLeaderboard_rank_column"/> | <@safe_include "repostLeaderboard_name_column"/> | <@safe_include "repostLeaderboard_count_column"/>
         <#list entries as user>
              <@userDisplay user=user />
          <#else>
          <@safe_include "repostLeaderboard_no_reposts"/>
         </#list>

         <@safe_include "repostLeaderboard_caller_marker"/>:
         <#if userExecuting.count gt 0>
         <@userDisplay user=userExecuting />
         <#else>
         <@safe_include "repostLeaderboard_no_reposts"/>
         </#if>
    "
}