#pragma once

#include <SAMP+/CRPC.h>
#include <SAMP+/client/Client.h>

class CRPCCallback
{
public:
	static void Initialize();

	static RPC_CALLBACK ToggleHUDComponent(RPC_ARGS);
	static RPC_CALLBACK SetRadioStation(RPC_ARGS);
	static RPC_CALLBACK SetWaveHeight(RPC_ARGS);
	static RPC_CALLBACK TogglePauseMenu(RPC_ARGS);
	static RPC_CALLBACK SetHUDComponentColour(RPC_ARGS);
	static RPC_CALLBACK SetPlayerCheckpointEx(RPC_ARGS);
	static RPC_CALLBACK SetPlayerRaceCheckpointEx(RPC_ARGS);
	static RPC_CALLBACK SetCheckpointColour(RPC_ARGS);
	static RPC_CALLBACK SetRaceCheckpointColour(RPC_ARGS);
	static RPC_CALLBACK ToggleAction(RPC_ARGS);
	static RPC_CALLBACK SetAmmoInClip(RPC_ARGS);
	static RPC_CALLBACK ToggleGrassPlayer(RPC_ARGS);
	static RPC_CALLBACK SetNoReload(RPC_ARGS);
	static RPC_CALLBACK ToggleInfiniteRun(RPC_ARGS);
	static RPC_CALLBACK DriveOnWater(RPC_ARGS);
	static RPC_CALLBACK SetBlur(RPC_ARGS);
	static RPC_CALLBACK SetSpeed(RPC_ARGS);
	static RPC_CALLBACK SetFrozen(RPC_ARGS);
	static RPC_CALLBACK SetAnims(RPC_ARGS);
	static RPC_CALLBACK ToggleSwitchReload(RPC_ARGS);
	static RPC_CALLBACK SetJetpackHeight(RPC_ARGS);
	static RPC_CALLBACK SetAircraftHeight(RPC_ARGS);
	static RPC_CALLBACK ToggleVehicleBlips(RPC_ARGS);
	static RPC_CALLBACK ToggleInfiniteOxygen(RPC_ARGS);
	static RPC_CALLBACK ToggleWaterBuoyancy(RPC_ARGS);
	static RPC_CALLBACK ToggleUnderwaterEffect(RPC_ARGS);
	static RPC_CALLBACK ToggleNightVision(RPC_ARGS);
	static RPC_CALLBACK ToggleThermalVision(RPC_ARGS);

	static RPC_CALLBACK SetQuickReload(RPC_ARGS);
	static RPC_CALLBACK SetWaterColor(RPC_ARGS);
	static RPC_CALLBACK SetSunColor(RPC_ARGS);
	static RPC_CALLBACK ResetSunColor(RPC_ARGS);
	static RPC_CALLBACK ResetWaterColor(RPC_ARGS);
	static RPC_CALLBACK SetClockStringFormat(RPC_ARGS);
	static RPC_CALLBACK SetMoneyStringFormat(RPC_ARGS);
	static RPC_CALLBACK SetPickupSize(RPC_ARGS);
	static RPC_CALLBACK SetFlameColor(RPC_ARGS);
	static RPC_CALLBACK SetRocketDelay(RPC_ARGS);

private:

};