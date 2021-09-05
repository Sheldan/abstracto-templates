{
  <#include "user_author">
  <@user_author user=suggester/>,
  <#include "user_user_name">
  <#assign user><@user_user_name user=suggester/></#assign>
  <#include "abstracto_color">,
  <#assign id>${suggestionId}</#assign>
  "description": "${text?json_string}",
  <#if message?? && message.attachments?size gt 0>
    "imageUrl": "${message.attachments[0].proxyUrl}",
  </#if>
  <#if useButtons>
    "buttons": [
      {
        "label": "<@safe_include "suggest_button_agree_label"/>",
        "id": "${agreeButtonModel.buttonId}",
        "buttonStyle": "success",
        "metaConfig": {
            "persistCallback": false
        }
      },
      {
        "label": "<@safe_include "suggest_button_disagree_label"/>",
        "id": "${disAgreeButtonModel.buttonId}",
        "buttonStyle": "danger",
        "metaConfig": {
            "persistCallback": false
        }
      },
      {
        "label": "<@safe_include "suggest_button_reset_vote_label"/>",
        "id": "${removeVoteButtonModel.buttonId}",
        "buttonStyle": "secondary",
        "metaConfig": {
            "persistCallback": false
        }
      }
    ],
    </#if>
  "footer": {
    "text": "<@safe_include "suggest_suggestion_id_footer"/>"
  }
}