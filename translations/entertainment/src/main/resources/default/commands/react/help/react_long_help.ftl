This command can be used to add reactions, representing text, to messages. The target message is defined by replying to the message while executing the command.
The bot will try to fix any duplicated characters in the text. It will try to replace multiple characters, with one reaction (if possible, for example there exists an emote for SOS), but in case the bot is unable to fix the duplicates, an error message will be shown. The replacement with multiple characters takes precedence over single characters.
If the already existing reactions and the reactions, which would be created by this command, reach the Discord limit of reactions on a message, this command will show an error message and not add any reaction.