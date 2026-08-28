CreateJoinPertaminaPoint()
{
	//JOBS
	new strings[128];
	
	CreateDynamicPickup(1239, 23, 2868.4248,-1943.1825,20.0046, -1, -1, -1, 50);
	format(strings, sizeof(strings), "[PT PERTAMINA]\n{FFFFFF}/sulingminyak");
	CreateDynamic3DTextLabel(strings, COLOR_YELLOW, 2868.4248,-1943.1825,20.0046, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1); // production job

	CreateDynamicPickup(1239, 23, 2924.8254,-1950.6947,5.7057, -1, -1, -1, 50);
	format(strings, sizeof(strings), "[PT PERTAMINA]\n{FFFFFF}/sellminyak");
	CreateDynamic3DTextLabel(strings, COLOR_YELLOW, 2924.8254,-1950.6947,5.7057, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1); // production job
}

CMD:sulingminyak(playerid, params[])
{
	if(pData[playerid][pJobTime] > 0) return Error(playerid, "Anda harus menunggu "GREY2_E"%d "WHITE_E"detik untuk bisa bekerja kembali.", pData[playerid][pJobTime]);
	if(pData[playerid][pJob] == 11 || pData[playerid][pJob2] == 11)
	{
		if(IsPlayerInRangeOfPoint(playerid, 2.0, 2868.4248,-1943.1825,20.0046))
		{
			new type;
			if(sscanf(params, "d", type)) return Usage(playerid, "/sulingminyak [type, 1.Biofuel]");
			
			if(type < 1 || type > 1) return Error(playerid, "Id Yang Kamu Masukan Salah.");
			
			if(type == 1)
			{
  				if(pData[playerid][pActivityTime] > 5) return Error(playerid, "Anda masih memiliki activity progress!");
				if(pData[playerid][pFood] < 20) return Error(playerid, "Food tidak cukup Untuk menyuling minyak biofuel!(Minimal: 20).");
				if(pData[playerid][CarryProduct] != 0) return Error(playerid, "Anda sedang membawa minyak");
				pData[playerid][pFood] -= 20;

                Info(playerid, "Anda sedang menyuling biofuel dengan 20 food!");
				ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 0, 0, 0, 0, 0, 1);
				pData[playerid][pProductingStatus] = 1;
				pData[playerid][pProducting] = SetTimerEx("SulingMinyak", 7000, true, "id", playerid, 1);
				ShowProgressbar1(playerid, "MENYULING", 7);
			}
		}
	}
	else Error(playerid, "Anda bukan pekerja sebagai operator PT PERTAMINA.");
	return 1;
}

ShowProgressbar1(playerid, text[] = "", Times)
{
    if(pData[playerid][pProgressBar] == 1)
	return Error(playerid, "ERROR: {FFFFFF}Anda Tidak Dapat Melakukan Nya Harap Tunggu");

    pData[playerid][pProgressBar] = 1;
    OnPlayerUpdate(playerid, "pProgressBar", 1);
	LoadingPlayerBar[playerid] = 0;
	new Float:Value = LoadingPlayerBar[playerid]*101/100;
	new Timeron = Times*1000/100;
	TextDrawTextSize(PROGRESSBAR[1], Value, 23.5);
	TextDrawSetString(PROGRESSBAR[2], text);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[0]);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[1]);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[2]);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[3]);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[4]);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[5]);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[6]);
	TogglePlayerControllable(playerid, 0);
	TimerLoading[playerid] = SetTimerEx("UpdtLoadingMinyak", Timeron, true, "d", playerid);
	return 1;
}
forward UpdtLoadingMinyak(playerid);
public UpdtLoadingMinyak(playerid)
{
	LoadingPlayerBar[playerid] += 1;
	UpdateLoading(playerid);
	if(LoadingPlayerBar[playerid] >= 100)
	{
	    pData[playerid][pProgressBar] = 0;
        OnPlayerUpdate(playerid, "pProgressBar", 0);
		KillTimer(TimerLoading[playerid]);
		LoadingPlayerBar[playerid] = 0;
		HideProgressBarMinyak(playerid);
		TogglePlayerControllable(playerid, 1);
	}
	return 1;
}
stock UpdateLoading(playerid)
{
	new Float:Value = LoadingPlayerBar[playerid]*101.0/100;
	TextDrawTextSize(PROGRESSBAR[1], Value, 23.4);
	TextDrawShowForPlayer(playerid, PROGRESSBAR[1]);
	return 1;
}

HideProgressBarMinyak(playerid)
{
	TextDrawHideForPlayer(playerid, PROGRESSBAR[0]);
	TextDrawHideForPlayer(playerid, PROGRESSBAR[1]);
	TextDrawHideForPlayer(playerid, PROGRESSBAR[2]);
	TextDrawHideForPlayer(playerid, PROGRESSBAR[3]);
	TextDrawHideForPlayer(playerid, PROGRESSBAR[4]);
	TextDrawHideForPlayer(playerid, PROGRESSBAR[5]);
	TextDrawHideForPlayer(playerid, PROGRESSBAR[6]);
	Info(playerid, "Anda telah berhasil mengolah minyak biofuel, /sellminyak untuk menjualnya.");
	TogglePlayerControllable(playerid, 1);
	InfoTD_MSG(playerid, 8000, "Minyak Terolah!");
	pData[playerid][CarryProduct] = 1;
	SetPlayerAttachedObject(playerid, 9, 3799, 5, 0.105, 0.086, 0.22, -80.3, 3.3, 28.7, 0.35, 0.35, 0.35);
	KillTimer(pData[playerid][pProducting]);
	pData[playerid][pActivityTime] = 0;
	pData[playerid][pProductingStatus] = 0;
	HidePlayerProgressBar(playerid, pData[playerid][activitybar]);
	PlayerTextDrawHide(playerid, ActiveTD[playerid]);
	pData[playerid][pEnergy] -= 3;
	ClearAnimations(playerid);
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
	PlayerPlaySound(playerid, 5203 , 0.0, 0.0, 0.0);
	return 1;
}

CMD:sellminyak(playerid, params[])
{
	if(!IsPlayerInRangeOfPoint(playerid, 3.0, 2924.8254,-1950.6947,5.7057, 28.54)) return Error(playerid, "Kamu tidak di tempat pengolahan minyak.");
	if(pData[playerid][CarryProduct] == 0) return Error(playerid, "Kamu sedang tidak memegang apapun.");

	if(pData[playerid][CarryProduct] == 1)
	{
		RemovePlayerAttachedObject(playerid, 9);
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
		pData[playerid][CarryProduct] = 0;
		GivePlayerMoneyEx(playerid, 330000);

		Product += 10;
		Server_MinMoney(500);
		Info(playerid, "Anda Berhasil mengolah dan mendapatkan "GREEN_E"Rp 33.000");
		pData[playerid][pJobTime] += 150;
	}
	return 1;
}
