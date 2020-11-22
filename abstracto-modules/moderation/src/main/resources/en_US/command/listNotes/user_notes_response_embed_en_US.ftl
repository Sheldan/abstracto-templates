{
  "author": {
  <#if specifiedUser??>
    "name": "<@member_user_name member=specifiedUser.member/>",
    "avatar": "${specifiedUser.member.user.effectiveAvatarUrl}"
  <#else>
   "name": "<@member_user_name member=member/>",
   "avatar": "${member.user.effectiveAvatarUrl}"
  </#if>
  },
  "title": {
  <#if specifiedUser??>
  <#assign user><@member_user_name member=specifiedUser.member/></#assign>
   "title": "<@safe_include "user_notes_embed_user_title"/>"
  <#else>
   "title": "<@safe_include "user_notes_embed_title"/>"
  </#if>
  },
  <#include "success_color">,
  "description": "<#list userNotes as note><#assign note=note/>
  <#assign user>${note.fullUser.member.asMention?js_string}</#assign>
  <#assign noteText>${note.note.note?js_string}</#assign>
  <#assign noteId>${note.note.userNoteId.id}</#assign>
  <#assign date>${formatDate(note.note.created, "yyyy-MM-dd HH:mm:ss")}</#assign>
  <@safe_include "user_notes_note_entry"/><#else><@safe_include "user_notes_no_notes"/>
  </#list>"
}