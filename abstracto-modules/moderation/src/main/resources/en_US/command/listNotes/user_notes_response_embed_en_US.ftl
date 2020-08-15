{
  "author": {
  <#if specifiedUser??>
    "name": "${specifiedUser.member.effectiveName?js_string}",
    "avatar": "${specifiedUser.member.user.effectiveAvatarUrl}"
  <#else>
   "name": "${member.effectiveName?js_string}",
   "avatar": "${member.user.effectiveAvatarUrl}"
  </#if>
  },
  "title": {
  <#if specifiedUser??>
  <#assign user>${specifiedUser.member.effectiveName?js_string}</#assign>
   "title": "<@safe_include "user_notes_embed_user_title"/>"
  <#else>
   "title": "<@safe_include "user_notes_embed_title"/>"
  </#if>
  },
  "color" : {
    "r": 200,
    "g": 0,
    "b": 255
  },
  "description": "<#list userNotes as note><#assign note=note/>
  <#assign user>${note.fullUser.member.asMention?js_string}</#assign>
  <#assign noteText>${note.note.note?js_string}</#assign>
  <#assign noteId>${note.note.id}</#assign>
  <#assign date>${formatDate(note.note.created, "yyyy-MM-dd HH:mm:ss")}</#assign>
  <@safe_include "user_notes_note_entry"/><#else><@safe_include "user_notes_no_notes"/>
  </#list>"
}