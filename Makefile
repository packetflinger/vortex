#include .config

ifndef CPU
	CPU := $(shell uname -m | sed -e s/i.86/i386/ -e s/amd64/x86_64/ -e s/sun4u/sparc64/ -e s/arm.*/arm/ -e s/sa110/arm/ -e s/alpha/axp/)
endif

ifndef REV
	REV := $(shell git rev-list HEAD | wc -l | tr -d " ")
endif

ifndef VER
	VER := $(REV)~$(shell git rev-parse --short HEAD)
endif
ifndef YEAR
	YEAR := $(shell date +%Y)
endif

CC ?= gcc
LD ?= ld
WINDRES ?= windres
STRIP ?= strip
RM ?= rm -f

CFLAGS += -O2 -fno-strict-aliasing -g -Wno-unused-but-set-variable -fPIC -MMD $(GLIB_CFLAGS) $(INCLUDES)
LDFLAGS ?= -shared $(GLIB_LDFLAGS)
LIBS ?= -lcurl -lm -ldl


HEADERS := \
	ability_def.h \
ally.h \
auras.h \
boss.h \
ctf.h \
damage.h \
g_abilities.h \
game.h \
g_ctf.h \
gds.h \
g_local.h \
invasion.h \
m_actor.h \
maplist.h \
m_berserk.h \
m_boss2.h \
m_boss31.h \
m_boss32.h \
m_brain.h \
m_chick.h \
menu.h \
m_flipper.h \
m_float.h \
m_flyer.h \
m_gladiator.h \
m_gunner.h \
m_hover.h \
m_infantry.h \
m_insane.h \
m_medic.h \
m_mutant.h \
morph.h \
m_parasite.h \
m_player.h \
m_rider.h \
m_soldier.h \
m_supertank.h \
m_tank.h \
p_hook.h \
playertoflyer.h \
p_menu.h \
q_shared.h \
resource.h \
runes.h \
scanner.h \
settings.h \
shaman.h \
special_items.h \
Spirit.h \
sqlite3.h \
Talents.h \
teamplay.h \
v_items.h \
v_maplist.h \
v_shared.h \
v_utils.h \
weapon_def.h


OBJS := \
ally.o \
armory.o \
auras.o \
backpack.o \
bombspell.o  \
boss_general.o \
boss_makron.o \
boss_tank.o \
class_brain.o \
class_demon.o \
cloak.o \
ctf.o \
damage.o \
domination.o \
drone_ai.o \
drone_berserk.o \
drone_bitch.o \
drone_brain.o \
drone_decoy.o \
drone_gladiator.o \
drone_gunner.o \
drone_infantry.o \
drone_jorg.o \
drone_makron.o \
drone_medic.o \
drone_misc.o \
drone_move.o \
drone_mutant.o \
drone_parasite.o \
drone_retard.o \
drone_soldier.o \
drone_supertank.o \
drone_tank.o \
ents.o \
file_output.o \
flying_skull.o \
forcewall.o \
g_chase.o \
g_cmds.o \
g_combat.o \
gds.o \
g_flame.o \
g_func.o \
g_items.o \
g_lasers.o \
g_main.o \
g_misc.o \
g_monster.o \
g_phys.o \
grid.o \
g_save.o \
g_spawn.o \
g_svcmds.o \
g_sword.o \
g_target.o \
g_trigger.o \
g_utils.o \
g_weapon.o \
help.o \
invasion.o \
item_menu.o \
jetpack.o \
lasersight.o \
lasers.o \
laserstuff.o \
magic.o \
maplist.o \
menu.o \
m_flash.o \
minisentry.o \
misc_stuff.o \
p_client.o \
p_hook.o \
p_hud.o \
playerlog.o \
Player.o \
player_points.o \
playertoberserk.o \
playertoflyer.o \
playertomedic.o \
playertomutant.o \
playertoparasite.o \
playertotank.o \
p_menu.o \
p_parasite.o \
p_trail.o \
pvb.o \
p_view.o \
p_weapon.o \
q_shared.o \
repairstation.o \
runes.o \
scanner.o \
sentrygun2.o \
shaman.o \
special_items.o \
Spirit.o \
sqlite3.o \
supplystation.o \
Talents.o \
teamplay.o \
totems.o \
trade.o \
upgrades.o \
v_file_IO.o \
v_items.o \
v_maplist.o \
vote.o \
v_utils.o \
weapons.o \
weapon_upgrades.o


TARGET ?= game$(CPU)-vortex.so	

all: $(TARGET)

default: all

# Define V=1 to show command line.
ifdef V
    Q :=
    E := @true
else
    Q := @
    E := @echo
endif

-include $(OBJS:.o=.d)

%.o: %.c $(HEADERS)
	$(E) [CC] $@
	$(Q)$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.rc
	$(E) [RC] $@
	$(Q)$(WINDRES) $(RCFLAGS) -o $@ $<

$(TARGET): $(OBJS)
	$(E) [LD] $@
	$(Q)$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	$(E) [CLEAN]
	$(Q)$(RM) *.o *.d $(TARGET)

strip: $(TARGET)
	$(E) [STRIP]
	$(Q)$(STRIP) $(TARGET)
	
