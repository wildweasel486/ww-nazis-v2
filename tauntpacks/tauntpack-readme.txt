Alright, so here's how the new taunt system works...

Weapons, when firing or reloading, will call an ACS script for Taunting. That script will determine whether the taunt will be played. (The chance for a firing taunt will be significantly lower than a reloading taunt.) This way, weapons don't need to be changed if I decide to alter the taunt frequency - AND it can be turned into a user option instead.

AS A RESULT, there are now THREE new $playersound entries in SNDINFO:
*tauntfire - a taunt that is played when firing the current weapon.
*tauntreload - a taunt that is played when reloading.
*grenadecall - a taunt that plays when a grenade is thrown.

ONLY ONE TAUNTPACK CAN BE LOADED AT ONCE. Tauntpacks may feel free to alter other player sounds as well (i.e. SoulMan). Sorry, I don't know of any better way to handle multiple tauntpacks at once, due to ZDoom limitations.