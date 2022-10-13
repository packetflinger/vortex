# Vortex Quickstart

## Game Overview

Vortex is a modification of Quake 2, a game published by Id Software. 
The first publicly playable version of Vortex was released sometime in 1999, 
and has maintained a cult-following thanks to continuous updates and 
improvements. It is a first-person shooter (FPS) with role-playing game 
(RPG) elements.

The core element is character development. Players fight and kill each 
other in order to gain experience points. After a certain number of points 
are accumulated, your character will gain a level. When this happens, you 
are allotted ability and weapon points which can be used to upgrade skills 
(abilities) or weapons. Some abilities are passive, meaning you don’t have 
to do anything to benefit from them, while others are active and require 
typing a command (or binding a key to the command) to activate.

With over 100 ability and weapon upgrades to choose from, there are plenty 
of combinations possible to differentiate one character from another. While 
some games lock abilities to certain classes, Vortex allows any class to 
upgrade any ability. The classes do, however, allow specialization. Each 
class has abilities that can be upgraded higher than non-class abilities. 
Finally, talent upgrades reward players who reach high levels, making them 
even stronger.

## Character Classes

When connecting to a Vortex gameserver, you will be able to create a new 
charater. You'll be able to select the class for your character which will
determine how the gameplay will work and what abilities are available to
your character.

### Soldier

The soldier’s main upgrades are strength and resistance. These are passive 
abilities that increase attack damage and reduce damage received. If you 
are used to standard FPS-style deathmatch, it would be wise to upgrade these. 
Soldiers can also specialize in different kinds of grenades.

### Engineer

The engineer is rather weak, and relies on building either traps or other 
mechanical devices to do his work. Sentry guns are popular, which lay waste 
to anything coming within their sights.

### Knight

The knight is limited to only 1 weapon: the sword. It’s one of the most 
powerful weapons in the game, but only if you can get close enough to your 
enemy to use it. Fortunately, knights are incredibly tough and have boost 
to close distance quickly.

### Vampire

The vampire has the innate ability to become invisible while not moving. 
His main attacks involve stealing life, ammunition, and power cubes from 
his enemy. Ghost allows the Vampire to repel attacks completely.

### Cleric

The cleric is a holy class that relies on auras to boost resistance, heal, 
and slow targets. Their blessed hammer does devastating damage, but is 
limited to close range.

### Necromancer

The necro can follow two ability trees, either relying on monsters or 
hellspawn to do his bidding, curses to weaken or confuse his target, or a 
combination of both.

### Poltergeist

The poltergeist is essentially a shapeshifter, capable of becoming a 
variety of monsters. Each monster has different characteristics, some 
capable of flying, while others are slow moving behemoths. Fortunately, 
a poltergeist has every “morph” upgraded to level 1, allowing you to 
experiment and find one that suits you best.

### Mage

As the name implies, the mage has a vast array of spells at his disposal, 
ranging from flaming meteors that smash enemies to bits, or lightning 
storms that electrocute unfortunate enough to be near them. The mage is 
mainly an offensive player; they are relatively weak, and instead rely 
on their spells to kill quickly before their enemy ever has a chance to 
react.

### Alien

This class was inspired by Gloom, another mod for Quake 2. The alien class 
can spawn all kinds of biological things, including healers that recover 
life when you touch them, or spores that will actively chase targets, or 
gassers that belch a poisonous cloud when an enemy gets too close. They 
can open a wormhole to quickly navigate a map, even passing through walls.

### Shaman

The Shaman’s abilities consist of a variety of totems. These totems are 
small structures that affect players within its radius. Some totems are 
beneficial to its owner and allies, while others slow or attack enemies. 
Haste provided increased attack speed, while fury gives a random boost of 
strength, resistance, and regeneration.

## Key Binds

Do yourself a favor and bind `vrxmenu` to some key for playing Vortex. It
will save you time.

`bind x "vrxmenu"`

## Secondary Weapon Bind

Weapons have 2 firing options, you'll need to toggle a bind to select the
secondary option:

`bind y "togglesecondary"`

## Gameplay Modes

*FFA (Free for All)*

This is the default game mode. Players fight and kill each other and/or 
monsters to gain experience points. Players (and any monsters they may 
summon) who have set their combat preferences to fight monsters only will 
glow blue (PvM mode). Morphed players (and any monsters they may summon) 
who are hostile against other players (i.e. Fight Players is enabled) will 
glow red (PvP/FFA mode), but non-morphed players will have no color shell. 
If a PvP/FFA (i.e. a player hostile against other players) player gets 
more than 5 kills in a row, they will glow or flash green to indicate spree 
status. If they get more than 24 kills in a row, they (and their minions) 
glow white to indicate spree war status. You won’t be able to kill anyone 
except the person (and his minions) during a spree war. Kill them for a 
big experience bonus!

*CTF (Capture the Flag)*

This mode will be familiar to most. There’s a blue team and red team. 
Players are distributed evenly among the teams by character level. The 
goal is to capture the enemy flag. You can also claim spawn points for 
your team which slows down the opposite team’s respawn rate. If you 
capture all the spawns, then the enemy can only respawn in their own base.

*Invasion*

Like PvM, the humans must fight monsters. The difference here is that there 
is a monster base and a human base. Your goal is to prevent the monsters 
from invading your base and killing your spawn points. If you win, extra 
points are awarded based on the number of live player spawns remaining.

## Aliances

If the server administrator permits it, you can ally with one or more 
players in PvP and FFA modes. Allied players share experience and can’t 
hurt each other. Type ‘ally’ at the console to open the allies menu. 
From here, you can view players you are already allied with, add 
additional allies, or remove allies.

## Upgrades

### Ability Upgrades

Each time your character gains a level, you will use the ability upgrade 
menu. You can access it by typing `vrxmenu` and selecting the appropriate 
sub-menu, or type `upgrade_ability` at the console.

Ability upgrades are divided into 2 categories: Class-specific skills and 
general skills. Class-specific skills can be upgraded to level 10, while 
general skills can be upgraded to level 5. Runes (discussed later) can 
further boost the skill level up to its hard maximum (usually twice the 
level you can normally upgrade it to). For example, if you upgrade 
Strength to 10, runes could theoretically boost that to level 20. 

When you view your abilities, the upgrade level is displayed on the left, 
while the effective level is displayed on the right in brackets (after 
factoring rune bonuses).

### Weapon Upgrades

You can upgrade your favorite weapon’s attributes via the weapons upgrade 
menu. To access it, use ‘vrxmenu’ and select the sub-menu, or use 
`upgrade_weapon`.

### Talents

Talent points are accumulated after your character reaches level 10. You 
can access the talent menu with the `talents` console command or via 
`vrxmenu`. Select a talent to view a brief description and decide if you 
want to upgrade it.

## The Armory

You can access the armory during pre-game time (the first 2 minutes at the 
start of a map). From this in-game store, you can buy and sell items.

