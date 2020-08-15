{
<#macro userDisplay user>
  ${user.rank} ${user.member.effectiveName?js_string} ${user.experience.experience} ${user.experience.currentLevel.level} ${user.experience.messageCount}
</#macro>
  "author": {
    "name": "${member.effectiveName?js_string}",
    "avatar":  "${member.user.effectiveAvatarUrl?js_string}"
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "
        <@safe_include "leaderboard_rank_column"/> | <@safe_include "leaderboard_name_column"/> | <@safe_include "leaderboard_experience_column"/> | <@safe_include "leaderboard_level_column"/> | <@safe_include "leaderboard_messages_column"/>
       <#list userExperiences as user>
            <@userDisplay user=user />
       </#list>
       <@userDisplay user=userExecuting />
  "
}