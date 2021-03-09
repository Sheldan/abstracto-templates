{
  "title": {
    "title": "<@safe_include "starStats_response_title"/>"
  },
  <#include "abstracto_color">,
  "description": "<@safe_include "startStats_description"/>",
  "fields": [
      {
            "name": "<@safe_include "starStats_top_starred_field_title"/>",
            "value": "
                <#list topPosts as post><#assign post=post/>
                <#assign badge>${badgeEmotes[post?index]}</#assign><#assign count>${post.starCount}</#assign><#assign link>${post.messageUrl}</#assign> <@safe_include "starStats_starred_entry"/><#else>
                    <@safe_include "starStats_no_starred_messages"/>
                </#list>
            "
      },
      {
            "name": "<@safe_include "starStats_top_starrer_field_title"/>",
            "value": "
                <#list starGiver as starrer><#assign starrer=starrer/>
                    <#assign badge>${badgeEmotes[starrer?index]}</#assign><#assign count>${starrer.starCount}</#assign>
                    <#if starrer.member?has_content>
                    <#assign user>${starrer.member.asMention?js_string}</#assign> <@safe_include "starStats_starrer_entry"/>
                    <#else>
                        <#assign user>${starrer.user.userReference.id?c}</#assign> <@safe_include "starStats_starrer_entry_left_guild"/>
                    </#if>
                 <#else>
                     <@safe_include "starStats_no_starred_messages"/>
                </#list>
            "
      },
     {
             "name": "<@safe_include "starStats_top_receiver_field_title"/>",
             "value": "
                <#list starReceiver as starred><#assign starred=starred/>
                    <#assign badge>${badgeEmotes[starred?index]}</#assign><#assign count>${starred.starCount}</#assign>
                    <#if starred.member?has_content>
                     <#assign user>${starred.member.asMention?js_string}</#assign> <@safe_include "starStats_receiver_entry"/>
                    <#else>
                     <#assign user>${starred.user.userReference.id?c}</#assign> <@safe_include "starStats_receiver_entry_left_guild"/>
                    </#if>
                <#else>
                   <@safe_include "starStats_no_starred_messages"/>
                </#list>
             "
     }
  ]
}