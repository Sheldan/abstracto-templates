<#include "format_instant">
{
    <#assign lastUpdated><@format_instant_relative instant=updated/></#assign>
    <#assign autoCloseTime><#if autoCloseInstant?has_content><@format_instant_relative instant=autoCloseInstant/></#if></#assign>
    <#assign threadIsPaused=paused/>
    "additionalMessage": "<@safe_include "modmail_thread_reminder_notification_embed_text"/><#if threadIsPaused> <@safe_include "modmail_thread_reminder_notification_paused_text"/></#if><#if autoCloseInstant?has_content> <@safe_include "modmail_thread_reminder_notification_auto_close_text"/></#if>"
}