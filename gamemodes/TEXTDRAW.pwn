//------------[ Textdraw ]------------

//Info textdraw
new PlayerText:InfoTD[MAX_PLAYERS];
new Text:TextTime, Text:TextDate;


//Hp
new PlayerText: Text_Player[MAX_PLAYERS][42];
new PlayerText: ClickInvoice[MAX_PLAYERS];
new PlayerText: ClickTransfer[MAX_PLAYERS];
new PlayerText: ClickTutup[MAX_PLAYERS];
new Text: Text_Locksreen[26];
new Text: Text_Global[48];
new Text: ClickFingerprint;
new Text: ClickClose;
new Text: ClickMbanking;
new Text: ClickGojek;
new Text: ClickTwitter;
new Text: ClickKontak;
new Text: ClickGps;
new Text: ClickSms;
new Text: ClickTelpon;
new Text: ClickSetting;

//Animation
new Text:AnimationTD;

// Phone Textdraws IndoGreat
new Text:PhoneTD[33];
new Text:phoneclosetd;
new Text:mesaagetd;
new Text:contactstd;
new Text:calltd;
new Text:twittertd;
new Text:banktd;
new Text:apptd;
new Text:gpstd;
new Text:settingtd;
new Text:cameratd;

//Etc
new Text:PublicTD[4];
//Spec
new Text:Spec[1];
//Vehicle textdraw
new Text:DPvehfare[MAX_PLAYERS];

//SPEEDOMETER NUSANTARA
new PlayerText:ArivenaSpeedo[MAX_PLAYERS][2];
new PlayerText:AFUELS[MAX_PLAYERS];
new PlayerText:ASPEEDO[MAX_PLAYERS];
new PlayerText:ALocation[MAX_PLAYERS];

//PROGRESS
new Text:PROGRESSBAR[7];
new LoadingPlayerBar[MAX_PLAYERS];
new TimerLoading[MAX_PLAYERS];
new ProgressTimer[MAX_PLAYERS][128];

//TD
new PlayerText:Spactate[22];

//HBE textdraw Simple
new PlayerText:VModelTD[MAX_PLAYERS];

new PlayerText:PNameStats[MAX_PLAYERS];
new PlayerText:PSkinStats[MAX_PLAYERS];
new PlayerText:ActiveTD[MAX_PLAYERS];

CreatePlayerTextDraws(playerid)
{
	/*//TD
	PublicTD[0] = TextDrawCreate(458.000000, 5.000000, "N");
	TextDrawFont(PublicTD[0], 1);
	TextDrawLetterSize(PublicTD[0], 0.604161, 2.949995);
	TextDrawTextSize(PublicTD[0], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[0], 1);
	TextDrawSetShadow(PublicTD[0], 0);
	TextDrawAlignment(PublicTD[0], 1);
	TextDrawColor(PublicTD[0], 16777215);
	TextDrawBackgroundColor(PublicTD[0], 255);
	TextDrawBoxColor(PublicTD[0], 50);
	TextDrawUseBox(PublicTD[0], 0);
	TextDrawSetProportional(PublicTD[0], 1);
	TextDrawSetSelectable(PublicTD[0], 0);

	PublicTD[1] = TextDrawCreate(476.000000, 10.000000, "usantara");
	TextDrawFont(PublicTD[1], 1);
	TextDrawLetterSize(PublicTD[1], 0.245829, 1.149999);
	TextDrawTextSize(PublicTD[1], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[1], 1);
	TextDrawSetShadow(PublicTD[1], 0);
	TextDrawAlignment(PublicTD[1], 1);
	TextDrawColor(PublicTD[1], 16777215);
	TextDrawBackgroundColor(PublicTD[1], 255);
	TextDrawBoxColor(PublicTD[1], 50);
	TextDrawUseBox(PublicTD[1], 0);
	TextDrawSetProportional(PublicTD[1], 1);
	TextDrawSetSelectable(PublicTD[1], 0);

	PublicTD[2] = TextDrawCreate(476.000000, 19.000000, "Ns-rp.fun");
	TextDrawFont(PublicTD[2], 1);
	TextDrawLetterSize(PublicTD[2], 0.224996, 1.100000);
	TextDrawTextSize(PublicTD[2], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[2], 1);
	TextDrawSetShadow(PublicTD[2], 0);
	TextDrawAlignment(PublicTD[2], 1);
	TextDrawColor(PublicTD[2], -1);
	TextDrawBackgroundColor(PublicTD[2], 255);
	TextDrawBoxColor(PublicTD[2], 50);
	TextDrawUseBox(PublicTD[2], 0);
	TextDrawSetProportional(PublicTD[2], 1);
	TextDrawSetSelectable(PublicTD[2], 0);*/

	PublicTD[0] = TextDrawCreate(486.000000, 5.000000, "CeritaKita");
	TextDrawFont(PublicTD[0], 2);
	TextDrawLetterSize(PublicTD[0], 0.170833, 1.000000);
	TextDrawTextSize(PublicTD[0], 394.500000, 12.000000);
	TextDrawSetOutline(PublicTD[0], 0);
	TextDrawSetShadow(PublicTD[0], 1);
	TextDrawAlignment(PublicTD[0], 1);
	TextDrawColor(PublicTD[0], -16776961);
	TextDrawBackgroundColor(PublicTD[0], 255);
	TextDrawBoxColor(PublicTD[0], 50);
	TextDrawUseBox(PublicTD[0], 0);
	TextDrawSetProportional(PublicTD[0], 1);
	TextDrawSetSelectable(PublicTD[0], 0);

	PublicTD[1] = TextDrawCreate(538.000000, 5.000000, "Roleplay");
	TextDrawFont(PublicTD[1], 2);
	TextDrawLetterSize(PublicTD[1], 0.170833, 1.000000);
	TextDrawTextSize(PublicTD[1], 394.500000, 12.000000);
	TextDrawSetOutline(PublicTD[1], 0);
	TextDrawSetShadow(PublicTD[1], 1);
	TextDrawAlignment(PublicTD[1], 1);
	TextDrawColor(PublicTD[1], -1);
	TextDrawBackgroundColor(PublicTD[1], 255);
	TextDrawBoxColor(PublicTD[1], 50);
	TextDrawUseBox(PublicTD[1], 0);
	TextDrawSetProportional(PublicTD[1], 1);
	TextDrawSetSelectable(PublicTD[1], 0);

	PublicTD[2] = TextDrawCreate(530.000000, 5.000000, "\\");
	TextDrawFont(PublicTD[2], 2);
	TextDrawLetterSize(PublicTD[2], 0.170833, 1.000000);
	TextDrawTextSize(PublicTD[2], 394.500000, 12.000000);
	TextDrawSetOutline(PublicTD[2], 0);
	TextDrawSetShadow(PublicTD[2], 1);
	TextDrawAlignment(PublicTD[2], 1);
	TextDrawColor(PublicTD[2], -16776961);
	TextDrawBackgroundColor(PublicTD[2], 255);
	TextDrawBoxColor(PublicTD[2], 50);
	TextDrawUseBox(PublicTD[2], 0);
	TextDrawSetProportional(PublicTD[2], 1);
	TextDrawSetSelectable(PublicTD[2], 0);

	PublicTD[3] = TextDrawCreate(532.000000, 5.000000, "\\");
	TextDrawFont(PublicTD[3], 2);
	TextDrawLetterSize(PublicTD[3], 0.170833, 1.000000);
	TextDrawTextSize(PublicTD[3], 394.500000, 12.000000);
	TextDrawSetOutline(PublicTD[3], 0);
	TextDrawSetShadow(PublicTD[3], 1);
	TextDrawAlignment(PublicTD[3], 1);
	TextDrawColor(PublicTD[3], -1);
	TextDrawBackgroundColor(PublicTD[3], 255);
	TextDrawBoxColor(PublicTD[3], 50);
	TextDrawUseBox(PublicTD[3], 0);
	TextDrawSetProportional(PublicTD[3], 1);
	TextDrawSetSelectable(PublicTD[3], 0);

	AFUELS[playerid] = CreatePlayerTextDraw(playerid, 139.000000, 413.500000, "");
	PlayerTextDrawFont(playerid, AFUELS[playerid], 1);
	PlayerTextDrawLetterSize(playerid, AFUELS[playerid], 0.291664, 1.499999);
	PlayerTextDrawTextSize(playerid, AFUELS[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, AFUELS[playerid], 0);
	PlayerTextDrawSetShadow(playerid, AFUELS[playerid], 0);
	PlayerTextDrawAlignment(playerid, AFUELS[playerid], 2);
	PlayerTextDrawColor(playerid, AFUELS[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, AFUELS[playerid], 255);
	PlayerTextDrawBoxColor(playerid, AFUELS[playerid], 50);
	PlayerTextDrawUseBox(playerid, AFUELS[playerid], 0);
	PlayerTextDrawSetProportional(playerid, AFUELS[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, AFUELS[playerid], 0);

	ArivenaSpeedo[playerid][0] = CreatePlayerTextDraw(playerid, 151.000000, 415.500000, "Fuel");
	PlayerTextDrawFont(playerid, ArivenaSpeedo[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, ArivenaSpeedo[playerid][0], 0.162496, 0.850000);
	PlayerTextDrawTextSize(playerid, ArivenaSpeedo[playerid][0], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, ArivenaSpeedo[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid, ArivenaSpeedo[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, ArivenaSpeedo[playerid][0], 1);
	PlayerTextDrawColor(playerid, ArivenaSpeedo[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, ArivenaSpeedo[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, ArivenaSpeedo[playerid][0], 50);
	PlayerTextDrawUseBox(playerid, ArivenaSpeedo[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, ArivenaSpeedo[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, ArivenaSpeedo[playerid][0], 0);

	ASPEEDO[playerid] = CreatePlayerTextDraw(playerid, 181.000000, 413.500000, "140");
	PlayerTextDrawFont(playerid, ASPEEDO[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ASPEEDO[playerid], 0.291664, 1.499999);
	PlayerTextDrawTextSize(playerid, ASPEEDO[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, ASPEEDO[playerid], 0);
	PlayerTextDrawSetShadow(playerid, ASPEEDO[playerid], 0);
	PlayerTextDrawAlignment(playerid, ASPEEDO[playerid], 2);
	PlayerTextDrawColor(playerid, ASPEEDO[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, ASPEEDO[playerid], 255);
	PlayerTextDrawBoxColor(playerid, ASPEEDO[playerid], 50);
	PlayerTextDrawUseBox(playerid, ASPEEDO[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ASPEEDO[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ASPEEDO[playerid], 0);

	ArivenaSpeedo[playerid][1] = CreatePlayerTextDraw(playerid, 195.000000, 416.500000, "KMH");
	PlayerTextDrawFont(playerid, ArivenaSpeedo[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, ArivenaSpeedo[playerid][1], 0.154164, 0.699998);
	PlayerTextDrawTextSize(playerid, ArivenaSpeedo[playerid][1], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, ArivenaSpeedo[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, ArivenaSpeedo[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, ArivenaSpeedo[playerid][1], 1);
	PlayerTextDrawColor(playerid, ArivenaSpeedo[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, ArivenaSpeedo[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, ArivenaSpeedo[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, ArivenaSpeedo[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, ArivenaSpeedo[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, ArivenaSpeedo[playerid][1], 0);

	ALocation[playerid] = CreatePlayerTextDraw(playerid, 132.000000, 429.500000, "Timur Laut I Rodeo");
	PlayerTextDrawFont(playerid, ALocation[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ALocation[playerid], 0.166665, 1.149999);
	PlayerTextDrawTextSize(playerid, ALocation[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, ALocation[playerid], 0);
	PlayerTextDrawSetShadow(playerid, ALocation[playerid], 0);
	PlayerTextDrawAlignment(playerid, ALocation[playerid], 1);
	PlayerTextDrawColor(playerid, ALocation[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, ALocation[playerid], 255);
	PlayerTextDrawBoxColor(playerid, ALocation[playerid], 50);
	PlayerTextDrawUseBox(playerid, ALocation[playerid], 0);
	PlayerTextDrawSetProportional(playerid, ALocation[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ALocation[playerid], 0);

	//SPECTATE
	Spec[0] = TextDrawCreate(319.000000, 342.000000, "UCP");
	TextDrawFont(Spec[0], 1);
	TextDrawLetterSize(Spec[0], 0.274999, 1.350000);
	TextDrawTextSize(Spec[0], 12.000000, 640.000000);
	TextDrawSetOutline(Spec[0], 1);
	TextDrawSetShadow(Spec[0], 0);
	TextDrawAlignment(Spec[0], 2);
	TextDrawColor(Spec[0], -1);
	TextDrawBackgroundColor(Spec[0], 255);
	TextDrawBoxColor(Spec[0], 1296911717);
	TextDrawUseBox(Spec[0], 1);
	TextDrawSetProportional(Spec[0], 1);
	TextDrawSetSelectable(Spec[0], 0);

	/*//PROGRESS
    PROGRESSBAR[0] = TextDrawCreate(273.000000, 364.000000, "ld_bum:blkdot");
	TextDrawFont(PROGRESSBAR[0], 4);
	TextDrawLetterSize(PROGRESSBAR[0], 0.600000, 2.000000);
	TextDrawTextSize(PROGRESSBAR[0], 101.000000, 23.500000);
	TextDrawSetOutline(PROGRESSBAR[0], 1);
	TextDrawSetShadow(PROGRESSBAR[0], 0);
	TextDrawAlignment(PROGRESSBAR[0], 1);
	TextDrawColor(PROGRESSBAR[0], 144);
	TextDrawBackgroundColor(PROGRESSBAR[0], 255);
	TextDrawBoxColor(PROGRESSBAR[0], 50);
	TextDrawUseBox(PROGRESSBAR[0], 1);
	TextDrawSetProportional(PROGRESSBAR[0], 1);
	TextDrawSetSelectable(PROGRESSBAR[0], 0);

	PROGRESSBAR[1] = TextDrawCreate(273.000000, 364.000000, "ld_bum:blkdot");
	TextDrawFont(PROGRESSBAR[1], 4);
	TextDrawLetterSize(PROGRESSBAR[1], 0.600000, 2.000000);
	TextDrawTextSize(PROGRESSBAR[1], 101.000000, 23.500000);
	TextDrawSetOutline(PROGRESSBAR[1], 1);
	TextDrawSetShadow(PROGRESSBAR[1], 0);
	TextDrawAlignment(PROGRESSBAR[1], 1);
	TextDrawColor(PROGRESSBAR[1], 60486911);
	TextDrawBackgroundColor(PROGRESSBAR[1], 255);
	TextDrawBoxColor(PROGRESSBAR[1], 50);
	TextDrawUseBox(PROGRESSBAR[1], 1);
	TextDrawSetProportional(PROGRESSBAR[1], 1);
	TextDrawSetSelectable(PROGRESSBAR[1], 0);

	PROGRESSBAR[2] = TextDrawCreate(323.000000, 370.000000, "MINUM");
	TextDrawFont(PROGRESSBAR[2], 1);
	TextDrawLetterSize(PROGRESSBAR[2], 0.216664, 1.200000);
	TextDrawTextSize(PROGRESSBAR[2], 406.500000, 98.000000);
	TextDrawSetOutline(PROGRESSBAR[2], 0);
	TextDrawSetShadow(PROGRESSBAR[2], 0);
	TextDrawAlignment(PROGRESSBAR[2], 2);
	TextDrawColor(PROGRESSBAR[2], -1);
	TextDrawBackgroundColor(PROGRESSBAR[2], 255);
	TextDrawBoxColor(PROGRESSBAR[2], 0);
	TextDrawUseBox(PROGRESSBAR[2], 1);
	TextDrawSetProportional(PROGRESSBAR[2], 1);
	TextDrawSetSelectable(PROGRESSBAR[2], 0);

	PROGRESSBAR[3] = TextDrawCreate(273.000000, 363.000000, "ld_bum:blkdot");
	TextDrawFont(PROGRESSBAR[3], 4);
	TextDrawLetterSize(PROGRESSBAR[3], 0.600000, 2.000000);
	TextDrawTextSize(PROGRESSBAR[3], 101.000000, 1.000000);
	TextDrawSetOutline(PROGRESSBAR[3], 1);
	TextDrawSetShadow(PROGRESSBAR[3], 0);
	TextDrawAlignment(PROGRESSBAR[3], 1);
	TextDrawColor(PROGRESSBAR[3], -162);
	TextDrawBackgroundColor(PROGRESSBAR[3], 255);
	TextDrawBoxColor(PROGRESSBAR[3], 50);
	TextDrawUseBox(PROGRESSBAR[3], 1);
	TextDrawSetProportional(PROGRESSBAR[3], 1);
	TextDrawSetSelectable(PROGRESSBAR[3], 0);

	PROGRESSBAR[4] = TextDrawCreate(272.000000, 363.000000, "ld_bum:blkdot");
	TextDrawFont(PROGRESSBAR[4], 4);
	TextDrawLetterSize(PROGRESSBAR[4], 0.600000, 2.000000);
	TextDrawTextSize(PROGRESSBAR[4], 1.000000, 24.500000);
	TextDrawSetOutline(PROGRESSBAR[4], 1);
	TextDrawSetShadow(PROGRESSBAR[4], 0);
	TextDrawAlignment(PROGRESSBAR[4], 1);
	TextDrawColor(PROGRESSBAR[4], -162);
	TextDrawBackgroundColor(PROGRESSBAR[4], 255);
	TextDrawBoxColor(PROGRESSBAR[4], 50);
	TextDrawUseBox(PROGRESSBAR[4], 1);
	TextDrawSetProportional(PROGRESSBAR[4], 1);
	TextDrawSetSelectable(PROGRESSBAR[4], 0);

	PROGRESSBAR[5] = TextDrawCreate(272.000000, 387.000000, "ld_bum:blkdot");
	TextDrawFont(PROGRESSBAR[5], 4);
	TextDrawLetterSize(PROGRESSBAR[5], 0.600000, 2.000000);
	TextDrawTextSize(PROGRESSBAR[5], 102.000000, 1.000000);
	TextDrawSetOutline(PROGRESSBAR[5], 1);
	TextDrawSetShadow(PROGRESSBAR[5], 0);
	TextDrawAlignment(PROGRESSBAR[5], 1);
	TextDrawColor(PROGRESSBAR[5], -162);
	TextDrawBackgroundColor(PROGRESSBAR[5], 255);
	TextDrawBoxColor(PROGRESSBAR[5], 50);
	TextDrawUseBox(PROGRESSBAR[5], 1);
	TextDrawSetProportional(PROGRESSBAR[5], 1);
	TextDrawSetSelectable(PROGRESSBAR[5], 0);

	PROGRESSBAR[6] = TextDrawCreate(374.000000, 363.000000, "ld_bum:blkdot");
	TextDrawFont(PROGRESSBAR[6], 4);
	TextDrawLetterSize(PROGRESSBAR[6], 0.600000, 2.000000);
	TextDrawTextSize(PROGRESSBAR[6], 1.000000, 24.500000);
	TextDrawSetOutline(PROGRESSBAR[6], 1);
	TextDrawSetShadow(PROGRESSBAR[6], 0);
	TextDrawAlignment(PROGRESSBAR[6], 1);
	TextDrawColor(PROGRESSBAR[6], -162);
	TextDrawBackgroundColor(PROGRESSBAR[6], 255);
	TextDrawBoxColor(PROGRESSBAR[6], 50);
	TextDrawUseBox(PROGRESSBAR[6], 1);
	TextDrawSetProportional(PROGRESSBAR[6], 1);
	TextDrawSetSelectable(PROGRESSBAR[6], 0);*/

	//Info Textdraw
	InfoTD[playerid] = CreatePlayerTextDraw(playerid, 148.888, 361.385, "");
 	PlayerTextDrawLetterSize(playerid, InfoTD[playerid], 0.326, 1.654);
	PlayerTextDrawAlignment(playerid, InfoTD[playerid], 1);
	PlayerTextDrawColor(playerid, InfoTD[playerid], -1);
	PlayerTextDrawSetOutline(playerid, InfoTD[playerid], -1);
	PlayerTextDrawBackgroundColor(playerid, InfoTD[playerid], 0x000000FF);
	PlayerTextDrawFont(playerid, InfoTD[playerid], 1);
	PlayerTextDrawSetProportional(playerid, InfoTD[playerid], 1);
	
	ActiveTD[playerid] = CreatePlayerTextDraw(playerid, 274.000000, 176.583435, "Mengisi Ulang...");
	PlayerTextDrawLetterSize(playerid, ActiveTD[playerid], 0.374000, 1.349166);
	PlayerTextDrawAlignment(playerid, ActiveTD[playerid], 1);
	PlayerTextDrawColor(playerid, ActiveTD[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ActiveTD[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ActiveTD[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, ActiveTD[playerid], 255);
	PlayerTextDrawFont(playerid, ActiveTD[playerid], 1);
	PlayerTextDrawSetProportional(playerid, ActiveTD[playerid], 1);
	PlayerTextDrawSetShadow(playerid, ActiveTD[playerid], 0);
	
	DPvehfare[playerid] = TextDrawCreate(462.000000, 401.166687, "$500.000");
	TextDrawLetterSize(DPvehfare[playerid], 0.216000, 0.952498);
	TextDrawAlignment(DPvehfare[playerid], 1);
	TextDrawColor(DPvehfare[playerid], 16711935);
	TextDrawSetShadow(DPvehfare[playerid], 0);
	TextDrawSetOutline(DPvehfare[playerid], 1);
	TextDrawBackgroundColor(DPvehfare[playerid], 255);
	TextDrawFont(DPvehfare[playerid], 1);
	TextDrawSetProportional(DPvehfare[playerid], 1);
	TextDrawSetShadow(DPvehfare[playerid], 0);

	//ls
	Text_Locksreen[0] = TextDrawCreate(503.000, 166.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[0], 50.000, 56.000);
	TextDrawAlignment(Text_Locksreen[0], 1);
	TextDrawColor(Text_Locksreen[0], 255);
	TextDrawSetShadow(Text_Locksreen[0], 0);
	TextDrawSetOutline(Text_Locksreen[0], 0);
	TextDrawBackgroundColor(Text_Locksreen[0], 255);
	TextDrawFont(Text_Locksreen[0], 4);
	TextDrawSetProportional(Text_Locksreen[0], 1);

	Text_Locksreen[1] = TextDrawCreate(503.000, 380.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[1], 50.000, 56.000);
	TextDrawAlignment(Text_Locksreen[1], 1);
	TextDrawColor(Text_Locksreen[1], 255);
	TextDrawSetShadow(Text_Locksreen[1], 0);
	TextDrawSetOutline(Text_Locksreen[1], 0);
	TextDrawBackgroundColor(Text_Locksreen[1], 255);
	TextDrawFont(Text_Locksreen[1], 4);
	TextDrawSetProportional(Text_Locksreen[1], 1);

	Text_Locksreen[2] = TextDrawCreate(579.000, 380.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[2], 45.000, 56.000);
	TextDrawAlignment(Text_Locksreen[2], 1);
	TextDrawColor(Text_Locksreen[2], 255);
	TextDrawSetShadow(Text_Locksreen[2], 0);
	TextDrawSetOutline(Text_Locksreen[2], 0);
	TextDrawBackgroundColor(Text_Locksreen[2], 255);
	TextDrawFont(Text_Locksreen[2], 4);
	TextDrawSetProportional(Text_Locksreen[2], 1);

	Text_Locksreen[3] = TextDrawCreate(579.000, 166.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[3], 45.000, 56.000);
	TextDrawAlignment(Text_Locksreen[3], 1);
	TextDrawColor(Text_Locksreen[3], 255);
	TextDrawSetShadow(Text_Locksreen[3], 0);
	TextDrawSetOutline(Text_Locksreen[3], 0);
	TextDrawBackgroundColor(Text_Locksreen[3], 255);
	TextDrawFont(Text_Locksreen[3], 4);
	TextDrawSetProportional(Text_Locksreen[3], 1);

	Text_Locksreen[4] = TextDrawCreate(511.000, 193.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[4], 106.000, 213.000);
	TextDrawAlignment(Text_Locksreen[4], 1);
	TextDrawColor(Text_Locksreen[4], 255);
	TextDrawSetShadow(Text_Locksreen[4], 0);
	TextDrawSetOutline(Text_Locksreen[4], 0);
	TextDrawBackgroundColor(Text_Locksreen[4], 255);
	TextDrawFont(Text_Locksreen[4], 4);
	TextDrawSetProportional(Text_Locksreen[4], 1);

	Text_Locksreen[5] = TextDrawCreate(528.000, 175.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[5], 72.000, 252.000);
	TextDrawAlignment(Text_Locksreen[5], 1);
	TextDrawColor(Text_Locksreen[5], 255);
	TextDrawSetShadow(Text_Locksreen[5], 0);
	TextDrawSetOutline(Text_Locksreen[5], 0);
	TextDrawBackgroundColor(Text_Locksreen[5], 255);
	TextDrawFont(Text_Locksreen[5], 4);
	TextDrawSetProportional(Text_Locksreen[5], 1);

	Text_Locksreen[6] = TextDrawCreate(507.000, 169.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[6], 46.000, 56.000);
	TextDrawAlignment(Text_Locksreen[6], 1);
	TextDrawColor(Text_Locksreen[6], 2147472639);
	TextDrawSetShadow(Text_Locksreen[6], 0);
	TextDrawSetOutline(Text_Locksreen[6], 0);
	TextDrawBackgroundColor(Text_Locksreen[6], 255);
	TextDrawFont(Text_Locksreen[6], 4);
	TextDrawSetProportional(Text_Locksreen[6], 1);

	Text_Locksreen[7] = TextDrawCreate(575.000, 169.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[7], 46.000, 56.000);
	TextDrawAlignment(Text_Locksreen[7], 1);
	TextDrawColor(Text_Locksreen[7], 2147472639);
	TextDrawSetShadow(Text_Locksreen[7], 0);
	TextDrawSetOutline(Text_Locksreen[7], 0);
	TextDrawBackgroundColor(Text_Locksreen[7], 255);
	TextDrawFont(Text_Locksreen[7], 4);
	TextDrawSetProportional(Text_Locksreen[7], 1);

	Text_Locksreen[8] = TextDrawCreate(575.000, 377.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[8], 46.000, 56.000);
	TextDrawAlignment(Text_Locksreen[8], 1);
	TextDrawColor(Text_Locksreen[8], 2147472639);
	TextDrawSetShadow(Text_Locksreen[8], 0);
	TextDrawSetOutline(Text_Locksreen[8], 0);
	TextDrawBackgroundColor(Text_Locksreen[8], 255);
	TextDrawFont(Text_Locksreen[8], 4);
	TextDrawSetProportional(Text_Locksreen[8], 1);

	Text_Locksreen[9] = TextDrawCreate(507.000, 377.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[9], 46.000, 56.000);
	TextDrawAlignment(Text_Locksreen[9], 1);
	TextDrawColor(Text_Locksreen[9], 2147472639);
	TextDrawSetShadow(Text_Locksreen[9], 0);
	TextDrawSetOutline(Text_Locksreen[9], 0);
	TextDrawBackgroundColor(Text_Locksreen[9], 255);
	TextDrawFont(Text_Locksreen[9], 4);
	TextDrawSetProportional(Text_Locksreen[9], 1);

	Text_Locksreen[10] = TextDrawCreate(514.700, 196.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[10], 98.500, 209.000);
	TextDrawAlignment(Text_Locksreen[10], 1);
	TextDrawColor(Text_Locksreen[10], 2147472639);
	TextDrawSetShadow(Text_Locksreen[10], 0);
	TextDrawSetOutline(Text_Locksreen[10], 0);
	TextDrawBackgroundColor(Text_Locksreen[10], 255);
	TextDrawFont(Text_Locksreen[10], 4);
	TextDrawSetProportional(Text_Locksreen[10], 1);

	Text_Locksreen[11] = TextDrawCreate(528.000, 178.399, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[11], 72.000, 244.800);
	TextDrawAlignment(Text_Locksreen[11], 1);
	TextDrawColor(Text_Locksreen[11], 2147472639);
	TextDrawSetShadow(Text_Locksreen[11], 0);
	TextDrawSetOutline(Text_Locksreen[11], 0);
	TextDrawBackgroundColor(Text_Locksreen[11], 255);
	TextDrawFont(Text_Locksreen[11], 4);
	TextDrawSetProportional(Text_Locksreen[11], 1);

	Text_Locksreen[12] = TextDrawCreate(554.000, 183.500, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[12], 17.000, 10.000);
	TextDrawAlignment(Text_Locksreen[12], 1);
	TextDrawColor(Text_Locksreen[12], 255);
	TextDrawSetShadow(Text_Locksreen[12], 0);
	TextDrawSetOutline(Text_Locksreen[12], 0);
	TextDrawBackgroundColor(Text_Locksreen[12], 255);
	TextDrawFont(Text_Locksreen[12], 4);
	TextDrawSetProportional(Text_Locksreen[12], 1);

	Text_Locksreen[13] = TextDrawCreate(546.000, 181.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[13], 15.000, 15.000);
	TextDrawAlignment(Text_Locksreen[13], 1);
	TextDrawColor(Text_Locksreen[13], 255);
	TextDrawSetShadow(Text_Locksreen[13], 0);
	TextDrawSetOutline(Text_Locksreen[13], 0);
	TextDrawBackgroundColor(Text_Locksreen[13], 255);
	TextDrawFont(Text_Locksreen[13], 4);
	TextDrawSetProportional(Text_Locksreen[13], 1);

	Text_Locksreen[14] = TextDrawCreate(564.000, 181.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Locksreen[14], 15.000, 15.000);
	TextDrawAlignment(Text_Locksreen[14], 1);
	TextDrawColor(Text_Locksreen[14], 255);
	TextDrawSetShadow(Text_Locksreen[14], 0);
	TextDrawSetOutline(Text_Locksreen[14], 0);
	TextDrawBackgroundColor(Text_Locksreen[14], 255);
	TextDrawFont(Text_Locksreen[14], 4);
	TextDrawSetProportional(Text_Locksreen[14], 1);

	Text_Locksreen[15] = TextDrawCreate(528.000, 303.398, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[15], 72.000, 119.800);
	TextDrawAlignment(Text_Locksreen[15], 1);
	TextDrawColor(Text_Locksreen[15], 2147472639);
	TextDrawSetShadow(Text_Locksreen[15], 0);
	TextDrawSetOutline(Text_Locksreen[15], 0);
	TextDrawBackgroundColor(Text_Locksreen[15], 255);
	TextDrawFont(Text_Locksreen[15], 4);
	TextDrawSetProportional(Text_Locksreen[15], 1);

	Text_Locksreen[16] = TextDrawCreate(534.000, 183.000, "12.00");
	TextDrawLetterSize(Text_Locksreen[16], 0.150, 1.098);
	TextDrawAlignment(Text_Locksreen[16], 2);
	TextDrawColor(Text_Locksreen[16], -1);
	TextDrawSetShadow(Text_Locksreen[16], 0);
	TextDrawSetOutline(Text_Locksreen[16], 0);
	TextDrawBackgroundColor(Text_Locksreen[16], 150);
	TextDrawFont(Text_Locksreen[16], 1);
	TextDrawSetProportional(Text_Locksreen[16], 1);

	Text_Locksreen[17] = TextDrawCreate(580.000, 189.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[17], 1.000, 3.000);
	TextDrawAlignment(Text_Locksreen[17], 1);
	TextDrawColor(Text_Locksreen[17], -1);
	TextDrawSetShadow(Text_Locksreen[17], 0);
	TextDrawSetOutline(Text_Locksreen[17], 0);
	TextDrawBackgroundColor(Text_Locksreen[17], 255);
	TextDrawFont(Text_Locksreen[17], 4);
	TextDrawSetProportional(Text_Locksreen[17], 1);

	Text_Locksreen[18] = TextDrawCreate(582.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[18], 1.000, -5.000);
	TextDrawAlignment(Text_Locksreen[18], 1);
	TextDrawColor(Text_Locksreen[18], -1);
	TextDrawSetShadow(Text_Locksreen[18], 0);
	TextDrawSetOutline(Text_Locksreen[18], 0);
	TextDrawBackgroundColor(Text_Locksreen[18], 255);
	TextDrawFont(Text_Locksreen[18], 4);
	TextDrawSetProportional(Text_Locksreen[18], 1);

	Text_Locksreen[19] = TextDrawCreate(584.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[19], 1.000, -7.000);
	TextDrawAlignment(Text_Locksreen[19], 1);
	TextDrawColor(Text_Locksreen[19], -1);
	TextDrawSetShadow(Text_Locksreen[19], 0);
	TextDrawSetOutline(Text_Locksreen[19], 0);
	TextDrawBackgroundColor(Text_Locksreen[19], 255);
	TextDrawFont(Text_Locksreen[19], 4);
	TextDrawSetProportional(Text_Locksreen[19], 1);

	Text_Locksreen[20] = TextDrawCreate(587.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[20], 13.000, -7.000);
	TextDrawAlignment(Text_Locksreen[20], 1);
	TextDrawColor(Text_Locksreen[20], -1);
	TextDrawSetShadow(Text_Locksreen[20], 0);
	TextDrawSetOutline(Text_Locksreen[20], 0);
	TextDrawBackgroundColor(Text_Locksreen[20], 255);
	TextDrawFont(Text_Locksreen[20], 4);
	TextDrawSetProportional(Text_Locksreen[20], 1);

	Text_Locksreen[21] = TextDrawCreate(587.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[21], 13.000, -7.000);
	TextDrawAlignment(Text_Locksreen[21], 1);
	TextDrawColor(Text_Locksreen[21], -1);
	TextDrawSetShadow(Text_Locksreen[21], 0);
	TextDrawSetOutline(Text_Locksreen[21], 0);
	TextDrawBackgroundColor(Text_Locksreen[21], 255);
	TextDrawFont(Text_Locksreen[21], 4);
	TextDrawSetProportional(Text_Locksreen[21], 1);

	Text_Locksreen[22] = TextDrawCreate(542.000, 225.000, "APPLE");
	TextDrawLetterSize(Text_Locksreen[22], 0.428, 2.698);
	TextDrawTextSize(Text_Locksreen[22], 4.000, 8.000);
	TextDrawAlignment(Text_Locksreen[22], 1);
	TextDrawColor(Text_Locksreen[22], -1);
	TextDrawSetShadow(Text_Locksreen[22], 1);
	TextDrawSetOutline(Text_Locksreen[22], 1);
	TextDrawBackgroundColor(Text_Locksreen[22], 150);
	TextDrawFont(Text_Locksreen[22], 1);
	TextDrawSetProportional(Text_Locksreen[22], 1);

	Text_Locksreen[23] = TextDrawCreate(544.000, 248.000, "C-Phone");
	TextDrawLetterSize(Text_Locksreen[23], 0.159, 0.999);
	TextDrawAlignment(Text_Locksreen[23], 1);
	TextDrawColor(Text_Locksreen[23], -1);
	TextDrawSetShadow(Text_Locksreen[23], 1);
	TextDrawSetOutline(Text_Locksreen[23], 1);
	TextDrawBackgroundColor(Text_Locksreen[23], 150);
	TextDrawFont(Text_Locksreen[23], 1);
	TextDrawSetProportional(Text_Locksreen[23], 1);

	Text_Locksreen[24] = TextDrawCreate(509.000, 228.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[24], 3.000, 23.000);
	TextDrawAlignment(Text_Locksreen[24], 1);
	TextDrawColor(Text_Locksreen[24], 255);
	TextDrawSetShadow(Text_Locksreen[24], 0);
	TextDrawSetOutline(Text_Locksreen[24], 0);
	TextDrawBackgroundColor(Text_Locksreen[24], 255);
	TextDrawFont(Text_Locksreen[24], 4);
	TextDrawSetProportional(Text_Locksreen[24], 1);

	Text_Locksreen[25] = TextDrawCreate(509.000, 259.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Locksreen[25], 3.000, 23.000);
	TextDrawAlignment(Text_Locksreen[25], 1);
	TextDrawColor(Text_Locksreen[25], 255);
	TextDrawSetShadow(Text_Locksreen[25], 0);
	TextDrawSetOutline(Text_Locksreen[25], 0);
	TextDrawBackgroundColor(Text_Locksreen[25], 255);
	TextDrawFont(Text_Locksreen[25], 4);
	TextDrawSetProportional(Text_Locksreen[25], 1);

	ClickFingerprint = TextDrawCreate(555.000, 348.000, "LD_POOL:ball");
	TextDrawTextSize(ClickFingerprint, 17.000, 19.000);
	TextDrawAlignment(ClickFingerprint, 1);
	TextDrawColor(ClickFingerprint, 255);
	TextDrawSetShadow(ClickFingerprint, 0);
	TextDrawSetOutline(ClickFingerprint, 0);
	TextDrawBackgroundColor(ClickFingerprint, 255);
	TextDrawFont(ClickFingerprint, 4);
	TextDrawSetProportional(ClickFingerprint, 1);
	TextDrawSetSelectable(ClickFingerprint, 1);

	ClickClose = TextDrawCreate(542.000, 413.000, "LD_SPAC:white");
	TextDrawTextSize(ClickClose, 46.000, 4.000);
	TextDrawAlignment(ClickClose, 1);
	TextDrawColor(ClickClose, -1);
	TextDrawSetShadow(ClickClose, 0);
	TextDrawSetOutline(ClickClose, 0);
	TextDrawBackgroundColor(ClickClose, 255);
	TextDrawFont(ClickClose, 4);
	TextDrawSetProportional(ClickClose, 1);
	TextDrawSetSelectable(ClickClose, 1);

	//HP NEGRIKU ROLEPLAY
	Text_Global[0] = TextDrawCreate(503.000, 166.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[0], 50.000, 56.000);
	TextDrawAlignment(Text_Global[0], 1);
	TextDrawColor(Text_Global[0], 255);
	TextDrawSetShadow(Text_Global[0], 0);
	TextDrawSetOutline(Text_Global[0], 0);
	TextDrawBackgroundColor(Text_Global[0], 255);
	TextDrawFont(Text_Global[0], 4);
	TextDrawSetProportional(Text_Global[0], 1);

	Text_Global[1] = TextDrawCreate(503.000, 380.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[1], 50.000, 56.000);
	TextDrawAlignment(Text_Global[1], 1);
	TextDrawColor(Text_Global[1], 255);
	TextDrawSetShadow(Text_Global[1], 0);
	TextDrawSetOutline(Text_Global[1], 0);
	TextDrawBackgroundColor(Text_Global[1], 255);
	TextDrawFont(Text_Global[1], 4);
	TextDrawSetProportional(Text_Global[1], 1);

	Text_Global[2] = TextDrawCreate(579.000, 380.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[2], 45.000, 56.000);
	TextDrawAlignment(Text_Global[2], 1);
	TextDrawColor(Text_Global[2], 255);
	TextDrawSetShadow(Text_Global[2], 0);
	TextDrawSetOutline(Text_Global[2], 0);
	TextDrawBackgroundColor(Text_Global[2], 255);
	TextDrawFont(Text_Global[2], 4);
	TextDrawSetProportional(Text_Global[2], 1);

	Text_Global[3] = TextDrawCreate(579.000, 166.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[3], 45.000, 56.000);
	TextDrawAlignment(Text_Global[3], 1);
	TextDrawColor(Text_Global[3], 255);
	TextDrawSetShadow(Text_Global[3], 0);
	TextDrawSetOutline(Text_Global[3], 0);
	TextDrawBackgroundColor(Text_Global[3], 255);
	TextDrawFont(Text_Global[3], 4);
	TextDrawSetProportional(Text_Global[3], 1);

	Text_Global[4] = TextDrawCreate(511.000, 193.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[4], 106.000, 213.000);
	TextDrawAlignment(Text_Global[4], 1);
	TextDrawColor(Text_Global[4], 255);
	TextDrawSetShadow(Text_Global[4], 0);
	TextDrawSetOutline(Text_Global[4], 0);
	TextDrawBackgroundColor(Text_Global[4], 255);
	TextDrawFont(Text_Global[4], 4);
	TextDrawSetProportional(Text_Global[4], 1);

	Text_Global[5] = TextDrawCreate(528.000, 175.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[5], 72.000, 252.000);
	TextDrawAlignment(Text_Global[5], 1);
	TextDrawColor(Text_Global[5], 255);
	TextDrawSetShadow(Text_Global[5], 0);
	TextDrawSetOutline(Text_Global[5], 0);
	TextDrawBackgroundColor(Text_Global[5], 255);
	TextDrawFont(Text_Global[5], 4);
	TextDrawSetProportional(Text_Global[5], 1);

	Text_Global[6] = TextDrawCreate(507.000, 169.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[6], 46.000, 56.000);
	TextDrawAlignment(Text_Global[6], 1);
	TextDrawColor(Text_Global[6], 2147472639);
	TextDrawSetShadow(Text_Global[6], 0);
	TextDrawSetOutline(Text_Global[6], 0);
	TextDrawBackgroundColor(Text_Global[6], 255);
	TextDrawFont(Text_Global[6], 4);
	TextDrawSetProportional(Text_Global[6], 1);

	Text_Global[7] = TextDrawCreate(575.000, 169.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[7], 46.000, 56.000);
	TextDrawAlignment(Text_Global[7], 1);
	TextDrawColor(Text_Global[7], 2147472639);
	TextDrawSetShadow(Text_Global[7], 0);
	TextDrawSetOutline(Text_Global[7], 0);
	TextDrawBackgroundColor(Text_Global[7], 255);
	TextDrawFont(Text_Global[7], 4);
	TextDrawSetProportional(Text_Global[7], 1);

	Text_Global[8] = TextDrawCreate(575.000, 377.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[8], 46.000, 56.000);
	TextDrawAlignment(Text_Global[8], 1);
	TextDrawColor(Text_Global[8], 2147472639);
	TextDrawSetShadow(Text_Global[8], 0);
	TextDrawSetOutline(Text_Global[8], 0);
	TextDrawBackgroundColor(Text_Global[8], 255);
	TextDrawFont(Text_Global[8], 4);
	TextDrawSetProportional(Text_Global[8], 1);

	Text_Global[9] = TextDrawCreate(507.000, 377.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[9], 46.000, 56.000);
	TextDrawAlignment(Text_Global[9], 1);
	TextDrawColor(Text_Global[9], 2147472639);
	TextDrawSetShadow(Text_Global[9], 0);
	TextDrawSetOutline(Text_Global[9], 0);
	TextDrawBackgroundColor(Text_Global[9], 255);
	TextDrawFont(Text_Global[9], 4);
	TextDrawSetProportional(Text_Global[9], 1);

	Text_Global[10] = TextDrawCreate(514.700, 196.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[10], 98.500, 209.000);
	TextDrawAlignment(Text_Global[10], 1);
	TextDrawColor(Text_Global[10], 2147472639);
	TextDrawSetShadow(Text_Global[10], 0);
	TextDrawSetOutline(Text_Global[10], 0);
	TextDrawBackgroundColor(Text_Global[10], 255);
	TextDrawFont(Text_Global[10], 4);
	TextDrawSetProportional(Text_Global[10], 1);

	Text_Global[11] = TextDrawCreate(528.000, 178.399, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[11], 72.000, 244.800);
	TextDrawAlignment(Text_Global[11], 1);
	TextDrawColor(Text_Global[11], 2147472639);
	TextDrawSetShadow(Text_Global[11], 0);
	TextDrawSetOutline(Text_Global[11], 0);
	TextDrawBackgroundColor(Text_Global[11], 255);
	TextDrawFont(Text_Global[11], 4);
	TextDrawSetProportional(Text_Global[11], 1);

	Text_Global[12] = TextDrawCreate(554.000, 183.500, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[12], 17.000, 10.000);
	TextDrawAlignment(Text_Global[12], 1);
	TextDrawColor(Text_Global[12], 255);
	TextDrawSetShadow(Text_Global[12], 0);
	TextDrawSetOutline(Text_Global[12], 0);
	TextDrawBackgroundColor(Text_Global[12], 255);
	TextDrawFont(Text_Global[12], 4);
	TextDrawSetProportional(Text_Global[12], 1);

	Text_Global[13] = TextDrawCreate(546.000, 181.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[13], 15.000, 15.000);
	TextDrawAlignment(Text_Global[13], 1);
	TextDrawColor(Text_Global[13], 255);
	TextDrawSetShadow(Text_Global[13], 0);
	TextDrawSetOutline(Text_Global[13], 0);
	TextDrawBackgroundColor(Text_Global[13], 255);
	TextDrawFont(Text_Global[13], 4);
	TextDrawSetProportional(Text_Global[13], 1);

	Text_Global[14] = TextDrawCreate(564.000, 181.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[14], 15.000, 15.000);
	TextDrawAlignment(Text_Global[14], 1);
	TextDrawColor(Text_Global[14], 255);
	TextDrawSetShadow(Text_Global[14], 0);
	TextDrawSetOutline(Text_Global[14], 0);
	TextDrawBackgroundColor(Text_Global[14], 255);
	TextDrawFont(Text_Global[14], 4);
	TextDrawSetProportional(Text_Global[14], 1);

	Text_Global[15] = TextDrawCreate(528.000, 303.398, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[15], 72.000, 119.800);
	TextDrawAlignment(Text_Global[15], 1);
	TextDrawColor(Text_Global[15], 2147472639);
	TextDrawSetShadow(Text_Global[15], 0);
	TextDrawSetOutline(Text_Global[15], 0);
	TextDrawBackgroundColor(Text_Global[15], 255);
	TextDrawFont(Text_Global[15], 4);
	TextDrawSetProportional(Text_Global[15], 1);

	Text_Global[16] = TextDrawCreate(534.000, 183.000, "12.00");
	TextDrawLetterSize(Text_Global[16], 0.150, 1.098);
	TextDrawAlignment(Text_Global[16], 2);
	TextDrawColor(Text_Global[16], -1);
	TextDrawSetShadow(Text_Global[16], 0);
	TextDrawSetOutline(Text_Global[16], 0);
	TextDrawBackgroundColor(Text_Global[16], 150);
	TextDrawFont(Text_Global[16], 1);
	TextDrawSetProportional(Text_Global[16], 1);

	Text_Global[17] = TextDrawCreate(580.000, 189.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[17], 1.000, 3.000);
	TextDrawAlignment(Text_Global[17], 1);
	TextDrawColor(Text_Global[17], -1);
	TextDrawSetShadow(Text_Global[17], 0);
	TextDrawSetOutline(Text_Global[17], 0);
	TextDrawBackgroundColor(Text_Global[17], 255);
	TextDrawFont(Text_Global[17], 4);
	TextDrawSetProportional(Text_Global[17], 1);

	Text_Global[18] = TextDrawCreate(582.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[18], 1.000, -5.000);
	TextDrawAlignment(Text_Global[18], 1);
	TextDrawColor(Text_Global[18], -1);
	TextDrawSetShadow(Text_Global[18], 0);
	TextDrawSetOutline(Text_Global[18], 0);
	TextDrawBackgroundColor(Text_Global[18], 255);
	TextDrawFont(Text_Global[18], 4);
	TextDrawSetProportional(Text_Global[18], 1);

	Text_Global[19] = TextDrawCreate(584.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[19], 1.000, -7.000);
	TextDrawAlignment(Text_Global[19], 1);
	TextDrawColor(Text_Global[19], -1);
	TextDrawSetShadow(Text_Global[19], 0);
	TextDrawSetOutline(Text_Global[19], 0);
	TextDrawBackgroundColor(Text_Global[19], 255);
	TextDrawFont(Text_Global[19], 4);
	TextDrawSetProportional(Text_Global[19], 1);

	Text_Global[20] = TextDrawCreate(587.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[20], 13.000, -7.000);
	TextDrawAlignment(Text_Global[20], 1);
	TextDrawColor(Text_Global[20], -1);
	TextDrawSetShadow(Text_Global[20], 0);
	TextDrawSetOutline(Text_Global[20], 0);
	TextDrawBackgroundColor(Text_Global[20], 255);
	TextDrawFont(Text_Global[20], 4);
	TextDrawSetProportional(Text_Global[20], 1);

	Text_Global[21] = TextDrawCreate(587.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[21], 13.000, -7.000);
	TextDrawAlignment(Text_Global[21], 1);
	TextDrawColor(Text_Global[21], -1);
	TextDrawSetShadow(Text_Global[21], 0);
	TextDrawSetOutline(Text_Global[21], 0);
	TextDrawBackgroundColor(Text_Global[21], 255);
	TextDrawFont(Text_Global[21], 4);
	TextDrawSetProportional(Text_Global[21], 1);

	Text_Global[22] = TextDrawCreate(588.000, 191.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[22], 11.000, -5.000);
	TextDrawAlignment(Text_Global[22], 1);
	TextDrawColor(Text_Global[22], 2147472639);
	TextDrawSetShadow(Text_Global[22], 0);
	TextDrawSetOutline(Text_Global[22], 0);
	TextDrawBackgroundColor(Text_Global[22], 255);
	TextDrawFont(Text_Global[22], 4);
	TextDrawSetProportional(Text_Global[22], 1);

	Text_Global[23] = TextDrawCreate(588.000, 187.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[23], 8.000, 3.000);
	TextDrawAlignment(Text_Global[23], 1);
	TextDrawColor(Text_Global[23], -1);
	TextDrawSetShadow(Text_Global[23], 0);
	TextDrawSetOutline(Text_Global[23], 0);
	TextDrawBackgroundColor(Text_Global[23], 255);
	TextDrawFont(Text_Global[23], 4);
	TextDrawSetProportional(Text_Global[23], 1);

	Text_Global[24] = TextDrawCreate(533.000, 219.000, "BRI");
	TextDrawLetterSize(Text_Global[24], 0.180, 1.197);
	TextDrawAlignment(Text_Global[24], 2);
	TextDrawColor(Text_Global[24], -1);
	TextDrawSetShadow(Text_Global[24], 0);
	TextDrawSetOutline(Text_Global[24], 0);
	TextDrawBackgroundColor(Text_Global[24], 150);
	TextDrawFont(Text_Global[24], 1);
	TextDrawSetProportional(Text_Global[24], 1);

	Text_Global[25] = TextDrawCreate(533.000, 227.000, "MOBILE");
	TextDrawLetterSize(Text_Global[25], 0.180, 1.197);
	TextDrawAlignment(Text_Global[25], 2);
	TextDrawColor(Text_Global[25], -1);
	TextDrawSetShadow(Text_Global[25], 0);
	TextDrawSetOutline(Text_Global[25], 0);
	TextDrawBackgroundColor(Text_Global[25], 150);
	TextDrawFont(Text_Global[25], 1);
	TextDrawSetProportional(Text_Global[25], 1);

	Text_Global[26] = TextDrawCreate(533.000, 244.000, "MBANKING");
	TextDrawLetterSize(Text_Global[26], 0.119, 0.998);
	TextDrawAlignment(Text_Global[26], 2);
	TextDrawColor(Text_Global[26], -1);
	TextDrawSetShadow(Text_Global[26], 0);
	TextDrawSetOutline(Text_Global[26], 0);
	TextDrawBackgroundColor(Text_Global[26], 150);
	TextDrawFont(Text_Global[26], 1);
	TextDrawSetProportional(Text_Global[26], 1);

	Text_Global[27] = TextDrawCreate(551.598, 214.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[27], 24.000, 30.000);
	TextDrawAlignment(Text_Global[27], 1);
	TextDrawColor(Text_Global[27], 852308735);
	TextDrawSetShadow(Text_Global[27], 0);
	TextDrawSetOutline(Text_Global[27], 0);
	TextDrawBackgroundColor(Text_Global[27], 255);
	TextDrawFont(Text_Global[27], 4);
	TextDrawSetProportional(Text_Global[27], 1);

	Text_Global[28] = TextDrawCreate(555.598, 219.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[28], 16.000, 21.000);
	TextDrawAlignment(Text_Global[28], 1);
	TextDrawColor(Text_Global[28], -1);
	TextDrawSetShadow(Text_Global[28], 0);
	TextDrawSetOutline(Text_Global[28], 0);
	TextDrawBackgroundColor(Text_Global[28], 255);
	TextDrawFont(Text_Global[28], 4);
	TextDrawSetProportional(Text_Global[28], 1);

	Text_Global[29] = TextDrawCreate(560.000, 224.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[29], 7.000, 9.000);
	TextDrawAlignment(Text_Global[29], 1);
	TextDrawColor(Text_Global[29], 852308735);
	TextDrawSetShadow(Text_Global[29], 0);
	TextDrawSetOutline(Text_Global[29], 0);
	TextDrawBackgroundColor(Text_Global[29], 255);
	TextDrawFont(Text_Global[29], 4);
	TextDrawSetProportional(Text_Global[29], 1);

	Text_Global[30] = TextDrawCreate(559.598, 234.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[30], 8.000, 7.000);
	TextDrawAlignment(Text_Global[30], 1);
	TextDrawColor(Text_Global[30], -1);
	TextDrawSetShadow(Text_Global[30], 0);
	TextDrawSetOutline(Text_Global[30], 0);
	TextDrawBackgroundColor(Text_Global[30], 255);
	TextDrawFont(Text_Global[30], 4);
	TextDrawSetProportional(Text_Global[30], 1);

	Text_Global[31] = TextDrawCreate(564.000, 244.000, "TAXI");
	TextDrawLetterSize(Text_Global[31], 0.119, 0.998);
	TextDrawAlignment(Text_Global[31], 2);
	TextDrawColor(Text_Global[31], -1);
	TextDrawSetShadow(Text_Global[31], 0);
	TextDrawSetOutline(Text_Global[31], 0);
	TextDrawBackgroundColor(Text_Global[31], 150);
	TextDrawFont(Text_Global[31], 1);
	TextDrawSetProportional(Text_Global[31], 1);

	Text_Global[32] = TextDrawCreate(587.400, 218.000, "LD_GRAV:beea");
	TextDrawTextSize(Text_Global[32], 13.000, 20.000);
	TextDrawAlignment(Text_Global[32], 1);
	TextDrawColor(Text_Global[32], 512819199);
	TextDrawSetShadow(Text_Global[32], 0);
	TextDrawSetOutline(Text_Global[32], 0);
	TextDrawBackgroundColor(Text_Global[32], 255);
	TextDrawFont(Text_Global[32], 4);
	TextDrawSetProportional(Text_Global[32], 1);

	Text_Global[33] = TextDrawCreate(594.000, 244.000, "{000000}CAMERA");
	TextDrawLetterSize(Text_Global[33], 0.119, 0.998);
	TextDrawAlignment(Text_Global[33], 2);
	TextDrawColor(Text_Global[33], -1);
	TextDrawSetShadow(Text_Global[33], 0);
	TextDrawSetOutline(Text_Global[33], 0);
	TextDrawBackgroundColor(Text_Global[33], 150);
	TextDrawFont(Text_Global[33], 1);
	TextDrawSetProportional(Text_Global[33], 1);

	Text_Global[34] = TextDrawCreate(524.000, 271.000, "LD_SHTR:kami");
	TextDrawTextSize(Text_Global[34], 18.000, 18.000);
	TextDrawAlignment(Text_Global[34], 1);
	TextDrawColor(Text_Global[34], -1);
	TextDrawSetShadow(Text_Global[34], 0);
	TextDrawSetOutline(Text_Global[34], 0);
	TextDrawBackgroundColor(Text_Global[34], 255);
	TextDrawFont(Text_Global[34], 4);
	TextDrawSetProportional(Text_Global[34], 1);

	Text_Global[35] = TextDrawCreate(533.000, 295.000, "KONTAK");
	TextDrawLetterSize(Text_Global[35], 0.119, 0.998);
	TextDrawAlignment(Text_Global[35], 2);
	TextDrawColor(Text_Global[35], -1);
	TextDrawSetShadow(Text_Global[35], 0);
	TextDrawSetOutline(Text_Global[35], 0);
	TextDrawBackgroundColor(Text_Global[35], 150);
	TextDrawFont(Text_Global[35], 1);
	TextDrawSetProportional(Text_Global[35], 1);

	Text_Global[36] = TextDrawCreate(559.000, 273.000, "HUD:radar_triadsCasino");
	TextDrawTextSize(Text_Global[36], 10.000, 15.000);
	TextDrawAlignment(Text_Global[36], 1);
	TextDrawColor(Text_Global[36], -1);
	TextDrawSetShadow(Text_Global[36], 0);
	TextDrawSetOutline(Text_Global[36], 0);
	TextDrawBackgroundColor(Text_Global[36], 255);
	TextDrawFont(Text_Global[36], 4);
	TextDrawSetProportional(Text_Global[36], 1);

	Text_Global[37] = TextDrawCreate(563.000, 295.000, "GPS");
	TextDrawLetterSize(Text_Global[37], 0.119, 0.998);
	TextDrawAlignment(Text_Global[37], 2);
	TextDrawColor(Text_Global[37], -1);
	TextDrawSetShadow(Text_Global[37], 0);
	TextDrawSetOutline(Text_Global[37], 0);
	TextDrawBackgroundColor(Text_Global[37], 150);
	TextDrawFont(Text_Global[37], 1);
	TextDrawSetProportional(Text_Global[37], 1);

	Text_Global[38] = TextDrawCreate(584.000, 267.000, "LD_BEAT:chit");
	TextDrawTextSize(Text_Global[38], 21.000, 25.000);
	TextDrawAlignment(Text_Global[38], 1);
	TextDrawColor(Text_Global[38], -1);
	TextDrawSetShadow(Text_Global[38], 0);
	TextDrawSetOutline(Text_Global[38], 0);
	TextDrawBackgroundColor(Text_Global[38], 255);
	TextDrawFont(Text_Global[38], 4);
	TextDrawSetProportional(Text_Global[38], 1);

	Text_Global[39] = TextDrawCreate(589.000, 279.000, " )) ");
	TextDrawLetterSize(Text_Global[39], 0.328, 1.098);
	TextDrawAlignment(Text_Global[39], 2);
	TextDrawColor(Text_Global[39], -1);
	TextDrawSetShadow(Text_Global[39], 0);
	TextDrawSetOutline(Text_Global[39], 0);
	TextDrawBackgroundColor(Text_Global[39], 150);
	TextDrawFont(Text_Global[39], 1);
	TextDrawSetProportional(Text_Global[39], 1);

	Text_Global[40] = TextDrawCreate(595.000, 295.000, "MESSAGE");
	TextDrawLetterSize(Text_Global[40], 0.119, 0.998);
	TextDrawAlignment(Text_Global[40], 2);
	TextDrawColor(Text_Global[40], -1);
	TextDrawSetShadow(Text_Global[40], 0);
	TextDrawSetOutline(Text_Global[40], 0);
	TextDrawBackgroundColor(Text_Global[40], 150);
	TextDrawFont(Text_Global[40], 1);
	TextDrawSetProportional(Text_Global[40], 1);

	Text_Global[41] = TextDrawCreate(527.000, 322.000, "LD_SHTR:pm3");
	TextDrawTextSize(Text_Global[41], 13.000, 18.000);
	TextDrawAlignment(Text_Global[41], 1);
	TextDrawColor(Text_Global[41], -1);
	TextDrawSetShadow(Text_Global[41], 0);
	TextDrawSetOutline(Text_Global[41], 0);
	TextDrawBackgroundColor(Text_Global[41], 255);
	TextDrawFont(Text_Global[41], 4);
	TextDrawSetProportional(Text_Global[41], 1);

	Text_Global[42] = TextDrawCreate(534.000, 346.000, "TELPON");
	TextDrawLetterSize(Text_Global[42], 0.119, 0.898);
	TextDrawAlignment(Text_Global[42], 2);
	TextDrawColor(Text_Global[42], -1);
	TextDrawSetShadow(Text_Global[42], 0);
	TextDrawSetOutline(Text_Global[42], 0);
	TextDrawBackgroundColor(Text_Global[42], 150);
	TextDrawFont(Text_Global[42], 1);
	TextDrawSetProportional(Text_Global[42], 1);

	Text_Global[43] = TextDrawCreate(509.000, 228.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[43], 3.000, 23.000);
	TextDrawAlignment(Text_Global[43], 1);
	TextDrawColor(Text_Global[43], 255);
	TextDrawSetShadow(Text_Global[43], 0);
	TextDrawSetOutline(Text_Global[43], 0);
	TextDrawBackgroundColor(Text_Global[43], 255);
	TextDrawFont(Text_Global[43], 4);
	TextDrawSetProportional(Text_Global[43], 1);

	Text_Global[44] = TextDrawCreate(509.000, 259.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[44], 3.000, 23.000);
	TextDrawAlignment(Text_Global[44], 1);
	TextDrawColor(Text_Global[44], 255);
	TextDrawSetShadow(Text_Global[44], 0);
	TextDrawSetOutline(Text_Global[44], 0);
	TextDrawBackgroundColor(Text_Global[44], 255);
	TextDrawFont(Text_Global[44], 4);
	TextDrawSetProportional(Text_Global[44], 1);

	Text_Global[45] = TextDrawCreate(616.000, 240.000, "LD_SPAC:white");
	TextDrawTextSize(Text_Global[45], 3.000, 23.000);
	TextDrawAlignment(Text_Global[45], 1);
	TextDrawColor(Text_Global[45], 255);
	TextDrawSetShadow(Text_Global[45], 0);
	TextDrawSetOutline(Text_Global[45], 0);
	TextDrawBackgroundColor(Text_Global[45], 255);
	TextDrawFont(Text_Global[45], 4);
	TextDrawSetProportional(Text_Global[45], 1);

	Text_Global[46] = TextDrawCreate(556.000, 324.000, "HUD:radar_waypoint");
	TextDrawTextSize(Text_Global[46], 15.000, 15.000);
	TextDrawAlignment(Text_Global[46], 1);
	TextDrawColor(Text_Global[46], -1);
	TextDrawSetShadow(Text_Global[46], 0);
	TextDrawSetOutline(Text_Global[46], 0);
	TextDrawBackgroundColor(Text_Global[46], 255);
	TextDrawFont(Text_Global[46], 4);
	TextDrawSetProportional(Text_Global[46], 1);

	Text_Global[47] = TextDrawCreate(564.000, 346.000, "SETTING");
	TextDrawLetterSize(Text_Global[47], 0.119, 0.898);
	TextDrawAlignment(Text_Global[47], 2);
	TextDrawColor(Text_Global[47], -1);
	TextDrawSetShadow(Text_Global[47], 0);
	TextDrawSetOutline(Text_Global[47], 0);
	TextDrawBackgroundColor(Text_Global[47], 150);
	TextDrawFont(Text_Global[47], 1);
	TextDrawSetProportional(Text_Global[47], 1);

	ClickMbanking = TextDrawCreate(521.000, 216.000, "M");
	TextDrawTextSize(ClickMbanking, 25.000, 27.000);
	TextDrawAlignment(ClickMbanking, 1);
	TextDrawColor(ClickMbanking, 421097727);
	TextDrawSetShadow(ClickMbanking, 0);
	TextDrawSetOutline(ClickMbanking, 0);
	TextDrawBackgroundColor(ClickMbanking, 255);
	TextDrawFont(ClickMbanking, 4);
	TextDrawSetProportional(ClickMbanking, 1);
	TextDrawSetSelectable(ClickMbanking, 1);

	ClickGojek = TextDrawCreate(551.000, 216.000, "G");
	TextDrawTextSize(ClickGojek, 25.000, 27.000);
	TextDrawAlignment(ClickGojek, 1);
	TextDrawColor(ClickGojek, -1);
	TextDrawSetShadow(ClickGojek, 0);
	TextDrawSetOutline(ClickGojek, 0);
	TextDrawBackgroundColor(ClickGojek, 255);
	TextDrawFont(ClickGojek, 4);
	TextDrawSetProportional(ClickGojek, 1);
	TextDrawSetSelectable(ClickGojek, 1);

	ClickTwitter = TextDrawCreate(582.000, 216.000, "G");
	TextDrawTextSize(ClickTwitter, 25.000, 27.000);
	TextDrawAlignment(ClickTwitter, 1);
	TextDrawColor(ClickTwitter, 793726975);
	TextDrawSetShadow(ClickTwitter, 0);
	TextDrawSetOutline(ClickTwitter, 0);
	TextDrawBackgroundColor(ClickTwitter, 255);
	TextDrawFont(ClickTwitter, 4);
	TextDrawSetProportional(ClickTwitter, 1);
	TextDrawSetSelectable(ClickTwitter, 1);

	ClickKontak = TextDrawCreate(521.000, 267.000, "K");
	TextDrawTextSize(ClickKontak, 25.000, 27.000);
	TextDrawAlignment(ClickKontak, 1);
	TextDrawColor(ClickKontak, 1768516095);
	TextDrawSetShadow(ClickKontak, 0);
	TextDrawSetOutline(ClickKontak, 0);
	TextDrawBackgroundColor(ClickKontak, 255);
	TextDrawFont(ClickKontak, 4);
	TextDrawSetProportional(ClickKontak, 1);
	TextDrawSetSelectable(ClickKontak, 1);

	ClickGps = TextDrawCreate(551.000, 267.000, "G");
	TextDrawTextSize(ClickGps, 25.000, 27.000);
	TextDrawAlignment(ClickGps, 1);
	TextDrawColor(ClickGps, 2147472639);
	TextDrawSetShadow(ClickGps, 0);
	TextDrawSetOutline(ClickGps, 0);
	TextDrawBackgroundColor(ClickGps, 255);
	TextDrawFont(ClickGps, 4);
	TextDrawSetProportional(ClickGps, 1);
	TextDrawSetSelectable(ClickGps, 1);

	ClickSms = TextDrawCreate(582.000, 267.000, "S");
	TextDrawTextSize(ClickSms, 25.000, 27.000);
	TextDrawAlignment(ClickSms, 1);
	TextDrawColor(ClickSms, 852308735);
	TextDrawSetShadow(ClickSms, 0);
	TextDrawSetOutline(ClickSms, 0);
	TextDrawBackgroundColor(ClickSms, 255);
	TextDrawFont(ClickSms, 4);
	TextDrawSetProportional(ClickSms, 1);
	TextDrawSetSelectable(ClickSms, 1);

	ClickTelpon = TextDrawCreate(521.000, 318.000, "T");
	TextDrawTextSize(ClickTelpon, 25.000, 27.000);
	TextDrawAlignment(ClickTelpon, 1);
	TextDrawColor(ClickTelpon, 852308735);
	TextDrawSetShadow(ClickTelpon, 0);
	TextDrawSetOutline(ClickTelpon, 0);
	TextDrawBackgroundColor(ClickTelpon, 255);
	TextDrawFont(ClickTelpon, 4);
	TextDrawSetProportional(ClickTelpon, 1);
	TextDrawSetSelectable(ClickTelpon, 1);

	ClickClose = TextDrawCreate(541.000, 416.000, "LD_SPAC:white");
	TextDrawTextSize(ClickClose, 46.000, 4.000);
	TextDrawAlignment(ClickClose, 1);
	TextDrawColor(ClickClose, -1);
	TextDrawSetShadow(ClickClose, 0);
	TextDrawSetOutline(ClickClose, 0);
	TextDrawBackgroundColor(ClickClose, 255);
	TextDrawFont(ClickClose, 4);
	TextDrawSetProportional(ClickClose, 1);
	TextDrawSetSelectable(ClickClose, 1);

	ClickSetting = TextDrawCreate(551.000, 318.000, "G");
	TextDrawTextSize(ClickSetting, 25.000, 27.000);
	TextDrawAlignment(ClickSetting, 1);
	TextDrawColor(ClickSetting, 2147472639);
	TextDrawSetShadow(ClickSetting, 0);
	TextDrawSetOutline(ClickSetting, 0);
	TextDrawBackgroundColor(ClickSetting, 255);
	TextDrawFont(ClickSetting, 4);
	TextDrawSetProportional(ClickSetting, 1);
	TextDrawSetSelectable(ClickSetting, 1);
}

CreateTextDraw()
{
	//Waktu
	TextTime = TextDrawCreate(320.000000, 6.000000, "-:-:-");
	TextDrawFont(TextTime, 3);
	TextDrawLetterSize(TextTime, 0.320832, 1.200000);
	TextDrawTextSize(TextTime, 400.000000, 17.000000);
	TextDrawSetOutline(TextTime, 1);
	TextDrawSetShadow(TextTime, 0);
	TextDrawAlignment(TextTime, 2);
	TextDrawColor(TextTime, -1);
	TextDrawBackgroundColor(TextTime, 255);
	TextDrawBoxColor(TextTime, 50);
	TextDrawUseBox(TextTime, 0);
	TextDrawSetProportional(TextTime, 1);
	TextDrawSetSelectable(TextTime, 0);

	// Animation textdraw
	AnimationTD = TextDrawCreate(261.000000, 395.000000, "Gunakan ~b~H~w~ untuk stop anim");
	TextDrawFont(AnimationTD, 2);
	TextDrawLetterSize(AnimationTD, 0.199996, 1.649996);
	TextDrawTextSize(AnimationTD, 636.500000, -174.500000);
	TextDrawSetOutline(AnimationTD, 1);
	TextDrawSetShadow(AnimationTD, 0);
	TextDrawAlignment(AnimationTD, 1);
	TextDrawColor(AnimationTD, -1);
	TextDrawBackgroundColor(AnimationTD, 255);
	TextDrawBoxColor(AnimationTD, 50);
	TextDrawUseBox(AnimationTD, 0);
	TextDrawSetProportional(AnimationTD, 1);
	TextDrawSetSelectable(AnimationTD, 0);

//------------[ Phone Textdraws IndoGreat ]
	/*PhoneTD[0] = TextDrawCreate(512.000000, 111.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[0], 4);
	TextDrawLetterSize(PhoneTD[0], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[0], 25.000000, 25.000000);
	TextDrawSetOutline(PhoneTD[0], 1);
	TextDrawSetShadow(PhoneTD[0], 0);
	TextDrawAlignment(PhoneTD[0], 1);
	TextDrawColor(PhoneTD[0], 255);
	TextDrawBackgroundColor(PhoneTD[0], 255);
	TextDrawBoxColor(PhoneTD[0], 50);
	TextDrawUseBox(PhoneTD[0], 1);
	TextDrawSetProportional(PhoneTD[0], 1);
	TextDrawSetSelectable(PhoneTD[0], 0);

	PhoneTD[1] = TextDrawCreate(410.000000, 111.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[1], 4);
	TextDrawLetterSize(PhoneTD[1], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[1], 25.000000, 25.000000);
	TextDrawSetOutline(PhoneTD[1], 1);
	TextDrawSetShadow(PhoneTD[1], 0);
	TextDrawAlignment(PhoneTD[1], 1);
	TextDrawColor(PhoneTD[1], 255);
	TextDrawBackgroundColor(PhoneTD[1], 255);
	TextDrawBoxColor(PhoneTD[1], 50);
	TextDrawUseBox(PhoneTD[1], 1);
	TextDrawSetProportional(PhoneTD[1], 1);
	TextDrawSetSelectable(PhoneTD[1], 0);

	PhoneTD[2] = TextDrawCreate(410.000000, 321.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[2], 4);
	TextDrawLetterSize(PhoneTD[2], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[2], 25.000000, 25.000000);
	TextDrawSetOutline(PhoneTD[2], 1);
	TextDrawSetShadow(PhoneTD[2], 0);
	TextDrawAlignment(PhoneTD[2], 1);
	TextDrawColor(PhoneTD[2], 255);
	TextDrawBackgroundColor(PhoneTD[2], 255);
	TextDrawBoxColor(PhoneTD[2], 50);
	TextDrawUseBox(PhoneTD[2], 1);
	TextDrawSetProportional(PhoneTD[2], 1);
	TextDrawSetSelectable(PhoneTD[2], 0);

	PhoneTD[3] = TextDrawCreate(512.000000, 321.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[3], 4);
	TextDrawLetterSize(PhoneTD[3], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[3], 25.000000, 25.000000);
	TextDrawSetOutline(PhoneTD[3], 1);
	TextDrawSetShadow(PhoneTD[3], 0);
	TextDrawAlignment(PhoneTD[3], 1);
	TextDrawColor(PhoneTD[3], 255);
	TextDrawBackgroundColor(PhoneTD[3], 255);
	TextDrawBoxColor(PhoneTD[3], 50);
	TextDrawUseBox(PhoneTD[3], 1);
	TextDrawSetProportional(PhoneTD[3], 1);
	TextDrawSetSelectable(PhoneTD[3], 0);

	PhoneTD[4] = TextDrawCreate(473.000000, 117.500000, "_");
	TextDrawFont(PhoneTD[4], 1);
	TextDrawLetterSize(PhoneTD[4], 0.554166, 24.650011);
	TextDrawTextSize(PhoneTD[4], 261.000000, 101.500000);
	TextDrawSetOutline(PhoneTD[4], 1);
	TextDrawSetShadow(PhoneTD[4], 0);
	TextDrawAlignment(PhoneTD[4], 2);
	TextDrawColor(PhoneTD[4], -1);
	TextDrawBackgroundColor(PhoneTD[4], 255);
	TextDrawBoxColor(PhoneTD[4], 255);
	TextDrawUseBox(PhoneTD[4], 1);
	TextDrawSetProportional(PhoneTD[4], 1);
	TextDrawSetSelectable(PhoneTD[4], 0);

	PhoneTD[5] = TextDrawCreate(473.500000, 123.500000, "_");
	TextDrawFont(PhoneTD[5], 1);
	TextDrawLetterSize(PhoneTD[5], 0.554166, 23.050035);
	TextDrawTextSize(PhoneTD[5], 252.500000, 114.500000);
	TextDrawSetOutline(PhoneTD[5], 1);
	TextDrawSetShadow(PhoneTD[5], 0);
	TextDrawAlignment(PhoneTD[5], 2);
	TextDrawColor(PhoneTD[5], -1);
	TextDrawBackgroundColor(PhoneTD[5], 255);
	TextDrawBoxColor(PhoneTD[5], 255);
	TextDrawUseBox(PhoneTD[5], 1);
	TextDrawSetProportional(PhoneTD[5], 1);
	TextDrawSetSelectable(PhoneTD[5], 0);

	PhoneTD[6] = TextDrawCreate(419.000000, 318.000000, "ld_dual:backgnd");
	TextDrawFont(PhoneTD[6], 4);
	TextDrawLetterSize(PhoneTD[6], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[6], 109.500000, -198.000000);
	TextDrawSetOutline(PhoneTD[6], 1);
	TextDrawSetShadow(PhoneTD[6], 0);
	TextDrawAlignment(PhoneTD[6], 1);
	TextDrawColor(PhoneTD[6], -1);
	TextDrawBackgroundColor(PhoneTD[6], 255);
	TextDrawBoxColor(PhoneTD[6], 50);
	TextDrawUseBox(PhoneTD[6], 1);
	TextDrawSetProportional(PhoneTD[6], 1);
	TextDrawSetSelectable(PhoneTD[6], 0);

	PhoneTD[7] = TextDrawCreate(473.500000, 120.500000, "_");
	TextDrawFont(PhoneTD[7], 1);
	TextDrawLetterSize(PhoneTD[7], 0.554166, 1.700037);
	TextDrawTextSize(PhoneTD[7], 252.500000, 105.000000);
	TextDrawSetOutline(PhoneTD[7], 1);
	TextDrawSetShadow(PhoneTD[7], 0);
	TextDrawAlignment(PhoneTD[7], 2);
	TextDrawColor(PhoneTD[7], -1);
	TextDrawBackgroundColor(PhoneTD[7], 255);
	TextDrawBoxColor(PhoneTD[7], 255);
	TextDrawUseBox(PhoneTD[7], 1);
	TextDrawSetProportional(PhoneTD[7], 1);
	TextDrawSetSelectable(PhoneTD[7], 0);

	PhoneTD[8] = TextDrawCreate(474.000000, 123.000000, "_");
	TextDrawFont(PhoneTD[8], 1);
	TextDrawLetterSize(PhoneTD[8], 0.600000, -0.199993);
	TextDrawTextSize(PhoneTD[8], 326.000000, 21.000000);
	TextDrawSetOutline(PhoneTD[8], 1);
	TextDrawSetShadow(PhoneTD[8], 0);
	TextDrawAlignment(PhoneTD[8], 2);
	TextDrawColor(PhoneTD[8], -1);
	TextDrawBackgroundColor(PhoneTD[8], 255);
	TextDrawBoxColor(PhoneTD[8], -1);
	TextDrawUseBox(PhoneTD[8], 1);
	TextDrawSetProportional(PhoneTD[8], 1);
	TextDrawSetSelectable(PhoneTD[8], 0);

	PhoneTD[9] = TextDrawCreate(512.000000, 321.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[9], 4);
	TextDrawLetterSize(PhoneTD[9], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[9], 25.000000, 25.000000);
	TextDrawSetOutline(PhoneTD[9], 1);
	TextDrawSetShadow(PhoneTD[9], 0);
	TextDrawAlignment(PhoneTD[9], 1);
	TextDrawColor(PhoneTD[9], 255);
	TextDrawBackgroundColor(PhoneTD[9], 255);
	TextDrawBoxColor(PhoneTD[9], 50);
	TextDrawUseBox(PhoneTD[9], 1);
	TextDrawSetProportional(PhoneTD[9], 1);
	TextDrawSetSelectable(PhoneTD[9], 0);

	PhoneTD[10] = TextDrawCreate(480.000000, 119.500000, "ld_beat:chit");
	TextDrawFont(PhoneTD[10], 4);
	TextDrawLetterSize(PhoneTD[10], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[10], 10.000000, 5.000000);
	TextDrawSetOutline(PhoneTD[10], 1);
	TextDrawSetShadow(PhoneTD[10], 0);
	TextDrawAlignment(PhoneTD[10], 1);
	TextDrawColor(PhoneTD[10], -1);
	TextDrawBackgroundColor(PhoneTD[10], 255);
	TextDrawBoxColor(PhoneTD[10], 50);
	TextDrawUseBox(PhoneTD[10], 1);
	TextDrawSetProportional(PhoneTD[10], 1);
	TextDrawSetSelectable(PhoneTD[10], 0);

	PhoneTD[11] = TextDrawCreate(457.000000, 119.500000, "ld_beat:chit");
	TextDrawFont(PhoneTD[11], 4);
	TextDrawLetterSize(PhoneTD[11], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[11], 10.000000, 5.000000);
	TextDrawSetOutline(PhoneTD[11], 1);
	TextDrawSetShadow(PhoneTD[11], 0);
	TextDrawAlignment(PhoneTD[11], 1);
	TextDrawColor(PhoneTD[11], -1);
	TextDrawBackgroundColor(PhoneTD[11], 255);
	TextDrawBoxColor(PhoneTD[11], 50);
	TextDrawUseBox(PhoneTD[11], 1);
	TextDrawSetProportional(PhoneTD[11], 1);
	TextDrawSetSelectable(PhoneTD[11], 0);

	PhoneTD[12] = TextDrawCreate(452.000000, 119.500000, "ld_beat:chit");
	TextDrawFont(PhoneTD[12], 4);
	TextDrawLetterSize(PhoneTD[12], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[12], 5.000000, 5.000000);
	TextDrawSetOutline(PhoneTD[12], 1);
	TextDrawSetShadow(PhoneTD[12], 0);
	TextDrawAlignment(PhoneTD[12], 1);
	TextDrawColor(PhoneTD[12], -1);
	TextDrawBackgroundColor(PhoneTD[12], 255);
	TextDrawBoxColor(PhoneTD[12], 50);
	TextDrawUseBox(PhoneTD[12], 1);
	TextDrawSetProportional(PhoneTD[12], 1);
	TextDrawSetSelectable(PhoneTD[12], 0);

	PhoneTD[13] = TextDrawCreate(422.000000, 138.000000, "00:00");
	TextDrawFont(PhoneTD[13], 3);
	TextDrawLetterSize(PhoneTD[13], 0.220833, 1.100000);
	TextDrawTextSize(PhoneTD[13], 550.000000, 17.000000);
	TextDrawSetOutline(PhoneTD[13], 1);
	TextDrawSetShadow(PhoneTD[13], 0);
	TextDrawAlignment(PhoneTD[13], 1);
	TextDrawColor(PhoneTD[13], -1);
	TextDrawBackgroundColor(PhoneTD[13], 255);
	TextDrawBoxColor(PhoneTD[13], 50);
	TextDrawUseBox(PhoneTD[13], 0);
	TextDrawSetProportional(PhoneTD[13], 1);
	TextDrawSetSelectable(PhoneTD[13], 0);

	PhoneTD[14] = TextDrawCreate(416.000000, 151.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[14], 4);
	TextDrawLetterSize(PhoneTD[14], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[14], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[14], 1);
	TextDrawSetShadow(PhoneTD[14], 0);
	TextDrawAlignment(PhoneTD[14], 1);
	TextDrawColor(PhoneTD[14], 1687547391);
	TextDrawBackgroundColor(PhoneTD[14], 1097458175);
	TextDrawBoxColor(PhoneTD[14], 1687547186);
	TextDrawUseBox(PhoneTD[14], 1);
	TextDrawSetProportional(PhoneTD[14], 1);
	TextDrawSetSelectable(PhoneTD[14], 0);

	PhoneTD[15] = TextDrawCreate(454.000000, 151.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[15], 4);
	TextDrawLetterSize(PhoneTD[15], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[15], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[15], 1);
	TextDrawSetShadow(PhoneTD[15], 0);
	TextDrawAlignment(PhoneTD[15], 1);
	TextDrawColor(PhoneTD[15], -65281);
	TextDrawBackgroundColor(PhoneTD[15], 255);
	TextDrawBoxColor(PhoneTD[15], 50);
	TextDrawUseBox(PhoneTD[15], 1);
	TextDrawSetProportional(PhoneTD[15], 1);
	TextDrawSetSelectable(PhoneTD[15], 0);

	PhoneTD[16] = TextDrawCreate(491.000000, 151.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[16], 4);
	TextDrawLetterSize(PhoneTD[16], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[16], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[16], 1);
	TextDrawSetShadow(PhoneTD[16], 0);
	TextDrawAlignment(PhoneTD[16], 1);
	TextDrawColor(PhoneTD[16], 1296911871);
	TextDrawBackgroundColor(PhoneTD[16], 255);
	TextDrawBoxColor(PhoneTD[16], -16777166);
	TextDrawUseBox(PhoneTD[16], 1);
	TextDrawSetProportional(PhoneTD[16], 1);
	TextDrawSetSelectable(PhoneTD[16], 0);

	PhoneTD[17] = TextDrawCreate(491.000000, 193.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[17], 4);
	TextDrawLetterSize(PhoneTD[17], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[17], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[17], 1);
	TextDrawSetShadow(PhoneTD[17], 0);
	TextDrawAlignment(PhoneTD[17], 1);
	TextDrawColor(PhoneTD[17], 2147472639);
	TextDrawBackgroundColor(PhoneTD[17], 255);
	TextDrawBoxColor(PhoneTD[17], -16777166);
	TextDrawUseBox(PhoneTD[17], 1);
	TextDrawSetProportional(PhoneTD[17], 1);
	TextDrawSetSelectable(PhoneTD[17], 0);

	PhoneTD[18] = TextDrawCreate(491.000000, 238.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[18], 4);
	TextDrawLetterSize(PhoneTD[18], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[18], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[18], 1);
	TextDrawSetShadow(PhoneTD[18], 0);
	TextDrawAlignment(PhoneTD[18], 1);
	TextDrawColor(PhoneTD[18], 9145343);
	TextDrawBackgroundColor(PhoneTD[18], 255);
	TextDrawBoxColor(PhoneTD[18], -16777166);
	TextDrawUseBox(PhoneTD[18], 1);
	TextDrawSetProportional(PhoneTD[18], 1);
	TextDrawSetSelectable(PhoneTD[18], 0);

	PhoneTD[19] = TextDrawCreate(416.000000, 193.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[19], 4);
	TextDrawLetterSize(PhoneTD[19], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[19], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[19], 1);
	TextDrawSetShadow(PhoneTD[19], 0);
	TextDrawAlignment(PhoneTD[19], 1);
	TextDrawColor(PhoneTD[19], -1);
	TextDrawBackgroundColor(PhoneTD[19], 1097458175);
	TextDrawBoxColor(PhoneTD[19], 1687547186);
	TextDrawUseBox(PhoneTD[19], 1);
	TextDrawSetProportional(PhoneTD[19], 1);
	TextDrawSetSelectable(PhoneTD[19], 0);

	PhoneTD[20] = TextDrawCreate(416.000000, 238.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[20], 4);
	TextDrawLetterSize(PhoneTD[20], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[20], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[20], 1);
	TextDrawSetShadow(PhoneTD[20], 0);
	TextDrawAlignment(PhoneTD[20], 1);
	TextDrawColor(PhoneTD[20], 65535);
	TextDrawBackgroundColor(PhoneTD[20], 1097458175);
	TextDrawBoxColor(PhoneTD[20], 1687547186);
	TextDrawUseBox(PhoneTD[20], 1);
	TextDrawSetProportional(PhoneTD[20], 1);
	TextDrawSetSelectable(PhoneTD[20], 0);

	PhoneTD[21] = TextDrawCreate(454.000000, 193.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[21], 4);
	TextDrawLetterSize(PhoneTD[21], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[21], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[21], 1);
	TextDrawSetShadow(PhoneTD[21], 0);
	TextDrawAlignment(PhoneTD[21], 1);
	TextDrawColor(PhoneTD[21], 1433087999);
	TextDrawBackgroundColor(PhoneTD[21], 255);
	TextDrawBoxColor(PhoneTD[21], 50);
	TextDrawUseBox(PhoneTD[21], 1);
	TextDrawSetProportional(PhoneTD[21], 1);
	TextDrawSetSelectable(PhoneTD[21], 0);

	PhoneTD[22] = TextDrawCreate(454.000000, 238.000000, "ld_beat:chit");
	TextDrawFont(PhoneTD[22], 4);
	TextDrawLetterSize(PhoneTD[22], 0.600000, 2.000000);
	TextDrawTextSize(PhoneTD[22], 40.000000, 40.000000);
	TextDrawSetOutline(PhoneTD[22], 1);
	TextDrawSetShadow(PhoneTD[22], 0);
	TextDrawAlignment(PhoneTD[22], 1);
	TextDrawColor(PhoneTD[22], -1962934017);
	TextDrawBackgroundColor(PhoneTD[22], 255);
	TextDrawBoxColor(PhoneTD[22], 50);
	TextDrawUseBox(PhoneTD[22], 1);
	TextDrawSetProportional(PhoneTD[22], 1);
	TextDrawSetSelectable(PhoneTD[22], 0);

	PhoneTD[23] = TextDrawCreate(428.000000, 186.000000, "SMS");
	TextDrawFont(PhoneTD[23], 1);
	TextDrawLetterSize(PhoneTD[23], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[23], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[23], 1);
	TextDrawSetShadow(PhoneTD[23], 0);
	TextDrawAlignment(PhoneTD[23], 1);
	TextDrawColor(PhoneTD[23], -1);
	TextDrawBackgroundColor(PhoneTD[23], 255);
	TextDrawBoxColor(PhoneTD[23], 50);
	TextDrawUseBox(PhoneTD[23], 0);
	TextDrawSetProportional(PhoneTD[23], 1);
	TextDrawSetSelectable(PhoneTD[23], 0);

	PhoneTD[24] = TextDrawCreate(458.000000, 186.000000, "CONTACT");
	TextDrawFont(PhoneTD[24], 1);
	TextDrawLetterSize(PhoneTD[24], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[24], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[24], 1);
	TextDrawSetShadow(PhoneTD[24], 0);
	TextDrawAlignment(PhoneTD[24], 1);
	TextDrawColor(PhoneTD[24], -1);
	TextDrawBackgroundColor(PhoneTD[24], 255);
	TextDrawBoxColor(PhoneTD[24], 50);
	TextDrawUseBox(PhoneTD[24], 0);
	TextDrawSetProportional(PhoneTD[24], 1);
	TextDrawSetSelectable(PhoneTD[24], 0);

	PhoneTD[25] = TextDrawCreate(502.000000, 186.000000, "CALL");
	TextDrawFont(PhoneTD[25], 1);
	TextDrawLetterSize(PhoneTD[25], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[25], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[25], 1);
	TextDrawSetShadow(PhoneTD[25], 0);
	TextDrawAlignment(PhoneTD[25], 1);
	TextDrawColor(PhoneTD[25], -1);
	TextDrawBackgroundColor(PhoneTD[25], 255);
	TextDrawBoxColor(PhoneTD[25], 50);
	TextDrawUseBox(PhoneTD[25], 0);
	TextDrawSetProportional(PhoneTD[25], 1);
	TextDrawSetSelectable(PhoneTD[25], 0);

	PhoneTD[26] = TextDrawCreate(497.000000, 227.000000, "SETTING");
	TextDrawFont(PhoneTD[26], 1);
	TextDrawLetterSize(PhoneTD[26], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[26], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[26], 1);
	TextDrawSetShadow(PhoneTD[26], 0);
	TextDrawAlignment(PhoneTD[26], 1);
	TextDrawColor(PhoneTD[26], -1);
	TextDrawBackgroundColor(PhoneTD[26], 255);
	TextDrawBoxColor(PhoneTD[26], 50);
	TextDrawUseBox(PhoneTD[26], 0);
	TextDrawSetProportional(PhoneTD[26], 1);
	TextDrawSetSelectable(PhoneTD[26], 0);

	PhoneTD[27] = TextDrawCreate(497.000000, 272.000000, "CAMERA");
	TextDrawFont(PhoneTD[27], 1);
	TextDrawLetterSize(PhoneTD[27], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[27], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[27], 1);
	TextDrawSetShadow(PhoneTD[27], 0);
	TextDrawAlignment(PhoneTD[27], 1);
	TextDrawColor(PhoneTD[27], -1);
	TextDrawBackgroundColor(PhoneTD[27], 255);
	TextDrawBoxColor(PhoneTD[27], 50);
	TextDrawUseBox(PhoneTD[27], 0);
	TextDrawSetProportional(PhoneTD[27], 1);
	TextDrawSetSelectable(PhoneTD[27], 0);

	PhoneTD[28] = TextDrawCreate(423.000000, 227.000000, "I-BANK");
	TextDrawFont(PhoneTD[28], 1);
	TextDrawLetterSize(PhoneTD[28], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[28], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[28], 1);
	TextDrawSetShadow(PhoneTD[28], 0);
	TextDrawAlignment(PhoneTD[28], 1);
	TextDrawColor(PhoneTD[28], -1);
	TextDrawBackgroundColor(PhoneTD[28], 255);
	TextDrawBoxColor(PhoneTD[28], 50);
	TextDrawUseBox(PhoneTD[28], 0);
	TextDrawSetProportional(PhoneTD[28], 1);
	TextDrawSetSelectable(PhoneTD[28], 0);

	PhoneTD[29] = TextDrawCreate(421.000000, 272.000000, "TWITTER");
	TextDrawFont(PhoneTD[29], 1);
	TextDrawLetterSize(PhoneTD[29], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[29], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[29], 1);
	TextDrawSetShadow(PhoneTD[29], 0);
	TextDrawAlignment(PhoneTD[29], 1);
	TextDrawColor(PhoneTD[29], -1);
	TextDrawBackgroundColor(PhoneTD[29], 255);
	TextDrawBoxColor(PhoneTD[29], 50);
	TextDrawUseBox(PhoneTD[29], 0);
	TextDrawSetProportional(PhoneTD[29], 1);
	TextDrawSetSelectable(PhoneTD[29], 0);

	PhoneTD[30] = TextDrawCreate(467.000000, 227.000000, "GPS");
	TextDrawFont(PhoneTD[30], 1);
	TextDrawLetterSize(PhoneTD[30], 0.224998, 1.000000);
	TextDrawTextSize(PhoneTD[30], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[30], 1);
	TextDrawSetShadow(PhoneTD[30], 0);
	TextDrawAlignment(PhoneTD[30], 1);
	TextDrawColor(PhoneTD[30], -1);
	TextDrawBackgroundColor(PhoneTD[30], 255);
	TextDrawBoxColor(PhoneTD[30], 50);
	TextDrawUseBox(PhoneTD[30], 0);
	TextDrawSetProportional(PhoneTD[30], 1);
	TextDrawSetSelectable(PhoneTD[30], 0);

	PhoneTD[31] = TextDrawCreate(462.000000, 272.000000, "APP");
	TextDrawFont(PhoneTD[31], 1);
	TextDrawLetterSize(PhoneTD[31], 0.224997, 1.000000);
	TextDrawTextSize(PhoneTD[31], 555.500000, 17.000000);
	TextDrawSetOutline(PhoneTD[31], 1);
	TextDrawSetShadow(PhoneTD[31], 0);
	TextDrawAlignment(PhoneTD[31], 1);
	TextDrawColor(PhoneTD[31], -1);
	TextDrawBackgroundColor(PhoneTD[31], 255);
	TextDrawBoxColor(PhoneTD[31], 50);
	TextDrawUseBox(PhoneTD[31], 0);
	TextDrawSetProportional(PhoneTD[31], 1);
	TextDrawSetSelectable(PhoneTD[31], 0);


	phoneclosetd = TextDrawCreate(459.000000, 316.500000, "ld_beat:chit");//close
	TextDrawFont(phoneclosetd, 4);
	TextDrawLetterSize(phoneclosetd, 0.600000, 2.000000);
	TextDrawTextSize(phoneclosetd, 27.000000, 27.000000);
	TextDrawSetOutline(phoneclosetd, 1);
	TextDrawSetShadow(phoneclosetd, 0);
	TextDrawAlignment(phoneclosetd, 1);
	TextDrawColor(phoneclosetd, -1);
	TextDrawBackgroundColor(phoneclosetd, 255);
	TextDrawBoxColor(phoneclosetd, 50);
	TextDrawUseBox(phoneclosetd, 1);
	TextDrawSetProportional(phoneclosetd, 1);
	TextDrawSetSelectable(phoneclosetd, 1);

	mesaagetd = TextDrawCreate(429.000000, 163.000000, "ld_chat:goodcha");
	TextDrawFont(mesaagetd, 4);
	TextDrawLetterSize(mesaagetd, 0.600000, 2.000000);
	TextDrawTextSize(mesaagetd, 14.000000, 14.000000);
	TextDrawSetOutline(mesaagetd, 1);
	TextDrawSetShadow(mesaagetd, 0);
	TextDrawAlignment(mesaagetd, 1);
	TextDrawColor(mesaagetd, -1);
	TextDrawBackgroundColor(mesaagetd, 255);
	TextDrawBoxColor(mesaagetd, 50);
	TextDrawUseBox(mesaagetd, 1);
	TextDrawSetProportional(mesaagetd, 1);
	TextDrawSetSelectable(mesaagetd, 1);

	contactstd = TextDrawCreate(467.000000, 163.000000, "ld_chat:badchat");
	TextDrawFont(contactstd, 4);
	TextDrawLetterSize(contactstd, 0.600000, 2.000000);
	TextDrawTextSize(contactstd, 14.000000, 14.000000);
	TextDrawSetOutline(contactstd, 1);
	TextDrawSetShadow(contactstd, 0);
	TextDrawAlignment(contactstd, 1);
	TextDrawColor(contactstd, -1);
	TextDrawBackgroundColor(contactstd, 255);
	TextDrawBoxColor(contactstd, 50);
	TextDrawUseBox(contactstd, 1);
	TextDrawSetProportional(contactstd, 1);
	TextDrawSetSelectable(contactstd, 1);

	cameratd = TextDrawCreate(504.000000, 251.000000, "ld_grav:flwr");
	TextDrawFont(cameratd, 4);
	TextDrawLetterSize(cameratd, 0.600000, 2.000000);
	TextDrawTextSize(cameratd, 14.000000, 14.000000);
	TextDrawSetOutline(cameratd, 1);
	TextDrawSetShadow(cameratd, 0);
	TextDrawAlignment(cameratd, 1);
	TextDrawColor(cameratd, -1);
	TextDrawBackgroundColor(cameratd, 255);
	TextDrawBoxColor(cameratd, 50);
	TextDrawUseBox(cameratd, 1);
	TextDrawSetProportional(cameratd, 1);
	TextDrawSetSelectable(cameratd, 1);

	banktd = TextDrawCreate(429.000000, 205.000000, "HUD:radar_cash");
	TextDrawFont(banktd, 4);
	TextDrawLetterSize(banktd, 0.600000, 2.000000);
	TextDrawTextSize(banktd, 14.000000, 14.000000);
	TextDrawSetOutline(banktd, 1);
	TextDrawSetShadow(banktd, 0);
	TextDrawAlignment(banktd, 1);
	TextDrawColor(banktd, -1);
	TextDrawBackgroundColor(banktd, 255);
	TextDrawBoxColor(banktd, 50);
	TextDrawUseBox(banktd, 1);
	TextDrawSetProportional(banktd, 1);
	TextDrawSetSelectable(banktd, 1);

	settingtd = TextDrawCreate(504.000000, 205.000000, "HUD:radar_waypoint");
	TextDrawFont(settingtd, 4);
	TextDrawLetterSize(settingtd, 0.600000, 2.000000);
	TextDrawTextSize(settingtd, 14.000000, 14.000000);
	TextDrawSetOutline(settingtd, 1);
	TextDrawSetShadow(settingtd, 0);
	TextDrawAlignment(settingtd, 1);
	TextDrawColor(settingtd, -1);
	TextDrawBackgroundColor(settingtd, 255);
	TextDrawBoxColor(settingtd, 50);
	TextDrawUseBox(settingtd, 1);
	TextDrawSetProportional(settingtd, 1);
	TextDrawSetSelectable(settingtd, 1);

	twittertd = TextDrawCreate(431.000000, 249.000000, "T");
	TextDrawFont(twittertd, 1);
	TextDrawLetterSize(twittertd, 0.562500, 1.799998);
	TextDrawTextSize(twittertd, 441.000000, 49.000000);
	TextDrawSetOutline(twittertd, 1);
	TextDrawSetShadow(twittertd, 0);
	TextDrawAlignment(twittertd, 1);
	TextDrawColor(twittertd, -1);
	TextDrawBackgroundColor(twittertd, 255);
	TextDrawBoxColor(twittertd, 50);
	TextDrawUseBox(twittertd, 0);
	TextDrawSetProportional(twittertd, 1);
	TextDrawSetSelectable(twittertd, 1);

	gpstd = TextDrawCreate(467.000000, 203.000000, "G");
	TextDrawFont(gpstd, 1);
	TextDrawLetterSize(gpstd, 0.495833, 1.799998);
	TextDrawTextSize(gpstd, 480.500000, 52.500000);
	TextDrawSetOutline(gpstd, 1);
	TextDrawSetShadow(gpstd, 0);
	TextDrawAlignment(gpstd, 1);
	TextDrawColor(gpstd, -1);
	TextDrawBackgroundColor(gpstd, 255);
	TextDrawBoxColor(gpstd, 50);
	TextDrawUseBox(gpstd, 0);
	TextDrawSetProportional(gpstd, 1);
	TextDrawSetSelectable(gpstd, 1);

	calltd = TextDrawCreate(505.000000, 161.000000, "C");
	TextDrawFont(calltd, 1);
	TextDrawLetterSize(calltd, 0.495833, 1.799998);
	TextDrawTextSize(calltd, 516.000000, 17.000000);
	TextDrawSetOutline(calltd, 1);
	TextDrawSetShadow(calltd, 0);
	TextDrawAlignment(calltd, 1);
	TextDrawColor(calltd, -1);
	TextDrawBackgroundColor(calltd, 255);
	TextDrawBoxColor(calltd, 50);
	TextDrawUseBox(calltd, 0);
	TextDrawSetProportional(calltd, 1);
	TextDrawSetSelectable(calltd, 1);

	apptd = TextDrawCreate(467.000000, 249.000000, "HUD:radar_datedisco");
	TextDrawFont(apptd, 4);
	TextDrawLetterSize(apptd, 0.495833, 1.799998);
	TextDrawTextSize(apptd, 15.000000, 16.500000);
	TextDrawSetOutline(apptd, 1);
	TextDrawSetShadow(apptd, 0);
	TextDrawAlignment(apptd, 1);
	TextDrawColor(apptd, -1);
	TextDrawBackgroundColor(apptd, 255);
	TextDrawBoxColor(apptd, 50);
	TextDrawUseBox(apptd, 0);
	TextDrawSetProportional(apptd, 1);
	TextDrawSetSelectable(apptd, 1);*/
}
