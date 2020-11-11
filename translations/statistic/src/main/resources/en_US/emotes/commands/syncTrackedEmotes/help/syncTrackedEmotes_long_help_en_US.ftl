Checks the currently available emotes of the server and synchronizes the state with the database.
This will not actually delete emotes or usages thereof, but only mark them as deleted, in case the emote was not found in the server anymore.
In case it finds new emotes, it will create them and automatically track them (depending on the feature mode).