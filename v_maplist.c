#include "g_local.h"

void DoMaplistFilename(int mode, char* filename)
{
	#if defined(_WIN32) || defined(WIN32)
		sprintf(filename, "%s\\Settings\\", game_path->string);
	#else
		sprintf(filename, "%s/Settings/", game_path->string);
	#endif

	switch(mode)
	{
	case MAPMODE_PVP:
		strcat(filename, "maplist_PVP.txt");
		break;
	case MAPMODE_DOM:
		strcat(filename, "maplist_DOM.txt");
		break;
	case MAPMODE_PVM:
		strcat(filename, "maplist_PVM.txt");
		break;
	case MAPMODE_CTF:
		strcat(filename, "maplist_CTF.txt");
		break;
	case MAPMODE_FFA:
		strcat(filename, "maplist_FFA.txt");
		break;
	case MAPMODE_INV:
		strcat(filename, "maplist_INV.txt");
		break;
	case MAPMODE_TRA:
		strcat(filename, "maplist_TRA.txt");
		break;
	case MAPMODE_INH:
		strcat(filename, "maplist_INH.txt");
		break;
	}
}

int v_LoadMapList(int mode)
{
	FILE *fptr;
	v_maplist_t *maplist;
	char filename[256];
	int iterator = 0;
	
	//determine path

	DoMaplistFilename(mode, &filename[0]);

	switch(mode)
	{
	case MAPMODE_PVP:
		maplist = &maplist_PVP;
		break;
	case MAPMODE_DOM:
		maplist = &maplist_DOM;
		break;
	case MAPMODE_PVM:
		maplist = &maplist_PVM;
		break;
	case MAPMODE_CTF:
		maplist = &maplist_CTF;
		break;
	case MAPMODE_FFA:
		maplist = &maplist_FFA;
		break;
	case MAPMODE_INV:
		maplist = &maplist_INV;
		break;
	case MAPMODE_TRA:
		maplist = &maplist_TRA;
		break;
	case MAPMODE_INH:
		maplist = &maplist_INH;
		break;
	default:
		gi.dprintf("ERROR in v_LoadMapList(). Incorrect map mode. (%d)\n", mode);
		return 0;
	}

	//gi.dprintf("mode = %d\n", mode);

	if ((fptr = fopen(filename, "r")) != NULL)
	{
		char buf[128], *s;

		while (fgets(buf, 128, fptr) != NULL)
		{
			// tokenize string using comma as separator
			if ((s = strtok(buf, ",")) != NULL)
			{
				// copy map name to list
				strcpy(maplist->maps[iterator].name, s);
			}
			else
			{
				// couldn't find first token, fail
				gi.dprintf("Error loading map file: %s\n", filename);
				maplist->nummaps = 0;
				fclose(fptr);
				return 0;
			}

			// find next token
			if ((s = strtok(NULL, ",")) != NULL)
			{
				// terminate the line
				maplist->maps[iterator].name[strlen(maplist->maps[iterator].name)] = '\0';

				// copy monster value to list
				maplist->maps[iterator].monsters = atoi(s);
			}
			else
				// make sure line is terminated
				maplist->maps[iterator].name[strlen(maplist->maps[iterator].name)-1] = '\0';

			++iterator;
		}
		fclose(fptr);
		maplist->nummaps = iterator;
	}
	else
	{
		gi.dprintf("Error loading map file: %s\n", filename);
		maplist->nummaps = 0;
	}
	
	return maplist->nummaps;
}