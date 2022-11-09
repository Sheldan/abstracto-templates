{
    <#assign sourceUser=sourceMember.memberMention/>
    <#assign targetUser=targetMember.memberMention/>
    <#assign creditsCount=credits/>
    "additionalMessage": "<@safe_include "transferCredits_response_text"/>",
    "messageConfig": {
        "ephemeral": false
    }
}