# TTS resource for MTA:SA

Simple TTS (Text To Speech) resource!

# Usage

You can tell your players that there is some event or something.

# SERVER SIDE

```lua
bool TTS( element player, string message )
```

# CLIENT SIDE

```lua
bool TTS( string message )
```

# HOW TO USE IN ANOTHER RESOURCE?

In RESOURCENAME you put, name of this resource.. if its TTS then exports["TTS"] and etc..

SERVER SIDE
exports["RESOURCENAME"]:TTS(plr,message)

CLIENT SIDE
exports["RESOURCENAME"]:TTS(message)
