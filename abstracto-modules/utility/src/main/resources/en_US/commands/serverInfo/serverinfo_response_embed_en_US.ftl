<#include "format_instant">
{
    "embeds": [
        {
            "title": {
                "title": "<#assign name=guild.name><@safe_include "serverinfo_embed_title"/>"
            },
            <#include "abstracto_color">,
            "fields": [
                {
                    "name": "<@safe_include "serverinfo_embed_id_field_title"/>",
                    "value": "${guild.id}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_owner_field_title"/>",
                    "value": "<@member_user_name member=guild.owner/>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_members_field_title"/>",
                    "value": "${guild.memberCount}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_role_count_field_title"/>",
                    "value": "${guild.roles?size}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_created_field_title"/>",
                    "value": "<@format_instant_date_time instant=timeCreated/>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_text_channel_count_field_title"/>",
                    "value": "${guild.textChannels?size}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_voice_channel_count_field_title"/>",
                    "value": "${guild.voiceChannels?size}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_emote_count_title"/>",
                    "value": "${guild.emojis?size}",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_static_emotes_title"/>",
                    "value": "<#list staticEmotes as emote>${emote.markDown}<#sep> <#else><@safe_include "serverinfo_embed_emotes_no_emotes"/></#list>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_animated_emotes_title"/>",
                    "value": "<#list animatedEmotes as emote>${emote.markDown}<#sep> <#else><@safe_include "serverinfo_embed_emotes_no_emotes"/></#list>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "serverinfo_embed_features_field_title"/>",
                    "value": "<#list guild.features as feature>${feature}<#sep> <#else><@safe_include "serverinfo_embed_features_no_features"/></#list>",
                    "inline": "true",
                    "valueSplitLength": 250
                }
            ]
        }
    ]
}