function ClearAnimNeww(playerid)
{
	ClearAnimations(playerid);
}
function AnimGerak(playerid)
{
   	new var = random(1);
   	switch (var)
	{
   		case 0:
   		{
			if(GetPlayerAnimationIndex(playerid) != 1189) ClearAnimations(playerid);
			ApplyAnimation(playerid, "PED","XPRESSscratch", 4.0, 0, 0, 0, 0, 0, 1);
			SetTimerEx("ClearAnimNeww", 4500, false, "i", playerid);
   			if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
   		    {
				ApplyAnimation(playerid, "PED","XPRESSscratch", 4.0, 0, 0, 0, 0, 0, 1);
				SetTimerEx("ClearAnimNeww", 4500, false, "i", playerid);
			}
		}
		case 1:
   		{
			if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
			{
				ApplyAnimation(playerid,"BENCHPRESS","gym_bp_celebrate",2.0, 0, 0, 0, 0, 0);
				SetTimerEx("ClearAnimNeww", 4000, false, "i", playerid);
			}
		}
	}
}