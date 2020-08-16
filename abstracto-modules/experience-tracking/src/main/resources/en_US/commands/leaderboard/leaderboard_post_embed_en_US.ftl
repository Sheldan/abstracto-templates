{
<#macro userDisplay user>
  ${user.rank} <@member_user_name member=user.member/> ${user.experience.experience} ${user.experience.currentLevel.level} ${user.experience.messageCount}
</#macro>
  <#include "member_author">
  <@member_author member=member/>,
  <#include "success_color">,
  "description": "
        <@safe_include "leaderboard_rank_column"/> | <@safe_include "leaderboard_name_column"/> | <@safe_include "leaderboard_experience_column"/> | <@safe_include "leaderboard_level_column"/> | <@safe_include "leaderboard_messages_column"/>
       <#list userExperiences as user>
            <@userDisplay user=user />
       </#list>
       <@userDisplay user=userExecuting />
  "
}