Creates an assignable role place with the given name used as key to identify it. The provided description will be displayed when it is posted.
This does not create any messages: this only creates the instance in the database. Said database instance can be removed with `deleteAssignableRolePlace`.
A `booster` assignable role place only allows boosting members to receive roles. If the member stops boosting the server, the received roles will be automatically removed.