#include <a_samp>
#include <sampp>
#include <dc_cmd>
#include <sscanf2>

main() { }

public OnGameModeInit()
{
	SetRocketDelay(50);
	SetGameModeText("Samp+ Pre-Alpha");
	return 1;
}
static const v_RadioStation[][] = { 
	"RADIO_PLAYBACKFM", 
	"RADIO_KROSE", 
	"RADIO_KDST", 
	"RADIO_BOUNCEFM", 
	"RADIO_SFUR", 
	"RADIO_LOSSANTOS", 
	"RADIO_RADIOX", 
	"RADIO_CSR", 
	"RADIO_KJAHWEST", 
	"RADIO_MASTERSOUNDS", 
	"RADIO_WCTR", 
	"RADIO_UTP", 
	"RADIO_OFF" 
};
public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
  	SetSpawnInfo(playerid, 255, 0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	SpawnPlayer (playerid);
	return 1;
}

public OnPlayerSAMPPJoin(playerid, bool:has_plugin)
{
	if (has_plugin == false)
	{
		SendClientMessage (playerid, -1, "Для игры на сервере, нужно установить дополнение!");
	}
	if (has_plugin == true)
	{
		SendClientMessage (playerid, -1, "дополнение есть!");
	}
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
    TogglePlayerClock(playerid, 1);
	return 1;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
    return 0;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid) {
	return 0;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}
public OnPlayerOpenPauseMenu(playerid) {//Работает 
	SendClientMessage(playerid,-1,!"Открыл меню паузы"); 
	return 1; 
} 
public OnPlayerClosePauseMenu(playerid) {//Работает 
	SendClientMessage(playerid,-1,!"Закрыл меню паузы"); 
	return 1; 
}
public OnPlayerChangeRadioStation(playerid,stationid,vehicleid) {//Работает 
	SendClientMessage(playerid,-1,v_RadioStation[stationid-1]); 
	return 1; 
}
public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}


public OnPlayerKeyDown (playerid, key)
{
	printf("%d,%s",key,key);
	return 1;
}

CMD:pickup(playerid, params[])
{
	new Float:pos[3];
	GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    CreatePickup(1242, 23, pos[0], pos[1], pos[2], -1);
    return 1;
}


CMD:pickupsize(playerid, params[])
{
	new Float:size;
	if (sscanf(params, "f", size))
	{
		new str[128];
		format (str, sizeof (str), "Current pickups size: %f", GetPickupSize(playerid));
		SendClientMessage(playerid, -1, str);
		return 1;
	}
	SetPickupSize(playerid, size);
	return 1;
}

CMD:flamecolor(playerid, params[])
{
	if (sscanf(params, "ii", params[0], params[1]))
	{
		new str[128];
		new color[2];
		GetPlayerFlameColor(playerid, color[0], color[1]);
		format (str, sizeof (str), "Current flame color: %i | %i", color[0], color[1]);
		SendClientMessage(playerid, -1, str);
		return 1;
	}
	SetPlayerFlameColor(playerid, params[0], params[1]);
	return 1;
}

CMD:cursor(playerid)
{
	TogglePlayerCursor(playerid, !GetCursorState(playerid));
	new str[128];
	format (str, sizeof (str), "New cursor state: %s", GetCursorState(playerid) == true ? ("Enabled") : ("Disabled"));
	SendClientMessage(playerid, -1, str);
	return 1;
}



CMD:setmoney(playerid, params[])
{
	if (sscanf(params, "d", params[0])) return SendClientMessage(playerid, -1, "params: money");
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, params[0]);
	return 1;
}
CMD:test1(playerid, params[])
{
//	SetPlayerRaceCheckpointEx(playerid, 1, 2039.9225,1342.3802,10.6719, 2035.9152,1305.0,10.8203, 5.0, 0x6666ffAA, 512, 2, 1);
	SetPlayerCheckpointEx(playerid, 2039.9225,1342.3802,10.6719, 5.0, 0x6666ffAA, 512, 2, 1, true);
	return 1;
}
CMD:test2(playerid, params[])
{
	SetClockStringFormat(playerid, "%02d/%02i");
	return 1;
}
CMD:test3(playerid, params[])
{
	SetMoneyStringFormat(playerid, "%08d$");
	return 1;
}
CMD:test4(playerid, params[])
{
	ToggleGrassPlayer(playerid, true);
	return 1;
}
CMD:test5(playerid, params[])
{
	ToggleGrassPlayer(playerid, false);
	return 1;
}

CMD:gun(playerid, params[])
{
	GivePlayerWeapon(playerid, 37, 1000);
	return 1;
}


CMD:hydra(playerid, params[])
{
	new Float:pos[3];
    GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    CreateVehicle(520, pos[0] + 20, pos[1], pos[2], 82.2873, -1, -1, 9999);
	return 1;
}

CMD:plane(playerid, params[])
{
    if (sscanf(params, "iiii", params[0],params[1],params[2],params[3]))
    {
        new str[128];
        new col[4];
		GetPlaneRadarColor(playerid, col[0], col[1], col[2], col[3]);
		format(str, sizeof(str), "Текущий цвет радара: R(%d) G(%d) B(%d) A(%d)", col[0], col[1], col[2], col[3]);
		SendClientMessage(playerid, -1, str);
		return 1;
    }
    SetPlaneRadarColor(playerid, params[0],params[1],params[2],params[3]);
    return 1;
}

CMD:watercolor(playerid, params[])
{
	new Float:col[4];
	if (sscanf(params, "ffff", col[0], col[1], col[2], col[3]))
	{
	    SendClientMessage(playerid, -1, "Цвет воды изменён на на чальное значение!");
	    ResetWaterColorForPlayer(playerid);
	    return 1;
	}
	SetWaterColorForPlayer (playerid, col[0], col[1], col[2], col[3]);
	return 1;
}

CMD:suncolor(playerid, params[])
{
	if (sscanf(params, "iiiiii", params[0], params[1], params[2], params[3], params[4], params[5])) return SendClientMessage(playerid, -1, "params: r g b r g b");
	SetSunColorForPlayer (playerid, params[0], params[1], params[2], params[3], params[4], params[5]);
	return 1;
}

CMD:gamespeed(playerid, params[])
{
	new Float:speed;
	if (sscanf(params, "f", speed)) return SendClientMessage(playerid, -1, "params: Float:speed");
	SetGameSpeedForAll(speed);
	return 1;
}
