#pragma once

#include <map>
#include <RakNet/BitStream.h>

#define RPC_CALLBACK void
#define RPC_ARGS RakNet::BitStream& bsData, int iExtra

typedef RPC_CALLBACK (*RPCFunct_t)(RPC_ARGS);

enum eRPC : unsigned short
{
	// client RPCs
	TOGGLE_HUD_COMPONENT,
	SET_RADIO_STATION,
	SET_WAVE_HEIGHT,
	SET_ROCKET_DELAY,
	TOGGLE_PAUSE_MENU,
	SET_HUD_COMPONENT_COLOUR,
	TOGGLE_ACTION,
	SET_CLIP_AMMO,
	SET_NO_RELOAD,
	SET_BLUR_INTENSITY,
	TOGGLE_DRIVE_ON_WATER,
	SET_GAME_SPEED,
	TOGGLE_PLAYER_FROZEN,
	SET_PLAYER_ANIMS,
	TOGGLE_SWITCH_RELOAD,
	TOGGLE_GRASS,
	TOGGLE_INFINITE_RUN,
	SET_AIRCRAFT_HEIGHT,
	SET_JETPACK_HEIGHT,
	SET_CHECKPOINT_EX,
	SET_RACE_CHECKPOINT_EX,
	SET_CHECKPOINT_COLOUR,
	SET_RACE_CHECKPOINT_COLOUR,
	TOGGLE_VEHICLE_BLIPS,
	TOGGLE_INFINITE_OXYGEN,
	TOGGLE_WATER_BUOYANCY,
	TOGGLE_UNDERWATER_EFFECT,
	TOGGLE_NIGHTVISION,
	TOGGLE_THERMALVISION,

	SET_WATER_COLOR,
	TOGGLE_PLAYER_CURSOR,
	SET_QUICK_RELOAD,
	SET_SUN_COLOR,
	RESET_SUN_COLOR,


	RESET_WATER_COLOR,
	SET_PLANE_RADAR_COLOR,
	SET_PICKUP_SIZE,
	SET_FLAME_COLOR,
	SET_CLOCK_STRING_FORMAT,
	SET_MONEY_STRING_FORMAT,

	// server RPCs
	ON_PAUSE_MENU_TOGGLE,
	ON_PAUSE_MENU_CHANGE,
	ON_DRIVE_BY_SHOT,
	ON_STUNT_BONUS,
	ON_RESOLUTION_CHANGE,
	ON_MOUSE_CLICK,
	ON_RADIO_CHANGE,
	ON_DRINK_SPRUNK,
	ON_KEY_DOWN
};

class CRPC
{
public:
	static void Add(unsigned short usRPCId, RPCFunct_t func);
	static void Process(unsigned short usRPCId, RakNet::BitStream& bsData, int iExtra = NULL);

private:
	static std::map<unsigned short, RPCFunct_t> m_functions;

};
