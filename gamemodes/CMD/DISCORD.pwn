forward DCC_DM(str[]);
public DCC_DM(str[])
{
    new DCC_Channel:PM;
	PM = DCC_GetCreatedPrivateChannel();
	printf("Created private channel: %d", PM); // Debugging output
	DCC_SendChannelMessage(PM, str);
	return 1;
}

forward DCC_DM_EMBED(str[], pin, id[]);
public DCC_DM_EMBED(str[], pin, id[])
{
    new DCC_Channel:PM, query[200];
	PM = DCC_GetCreatedPrivateChannel();

    new DCC_Embed:embed = DCC_CreateEmbed(.title="NEGERIKU EMPERIAL - UCP SYSTEM", .image_url="https://cdn.discordapp.com/attachments/1245270484418035752/1250815236773253200/20240613_211215.jpg?ex=674fbab7&is=674e6937&hm=918248c7aa683eab335391d810946e838a6d668bda557c3ad4b7566e6ad642d0&");
	new str1[100], str2[100];

	format(str1, sizeof str1, "**\nHalo! %s\nUCP kamu berhasil terverifikasi**\nKami Mengucapkan Terimakasih Telah Bergabung\ndengan komunitas kami, berikut data ucp anda\n Selamat Bermain");
	DCC_SetEmbedDescription(embed, str1);
	format(str1, sizeof str1, "UCP");
	format(str2, sizeof str2, "\n%s", str);
	DCC_AddEmbedField(embed, str1, str2, bool:1);
	format(str1, sizeof str1, "PIN");
	format(str2, sizeof str2, "\n%d", pin);
	DCC_AddEmbedField(embed, str1, str2, bool:1);

	DCC_SendChannelEmbedMessage(PM, embed);

	mysql_format(g_SQL, query, sizeof query, "INSERT INTO `playerucp` (`ucp`, `verifycode`, `DiscordID`) VALUES ('%e', '%d', '%e')", str, pin, id);
	mysql_tquery(g_SQL, query);
	return 1;
}

forward CheckDiscordUCP(DiscordID[], Nama_UCP[]);
public CheckDiscordUCP(DiscordID[], Nama_UCP[])
{
	new rows = cache_num_rows();
	new DCC_Role: WARGA, DCC_Guild: guild, DCC_User: user, dc[100];
	new verifycode = RandomEx(111111, 988888);
	if(rows > 0)
	{
		return SendDiscordMessage(7, "**[INFO]:** Nama UCP account tersebut sudah terdaftar");
	}
	else 
	{
		guild = DCC_FindGuildById("1028311848006733905");
		WARGA = DCC_FindRoleById("1028311848052850779");
		user = DCC_FindUserById(DiscordID);
		DCC_SetGuildMemberNickname(guild, user, Nama_UCP);
		DCC_AddGuildMemberRole(guild, user, WARGA);

		format(dc, sizeof(dc),  "**UCP SYSTEM :ballot_box: :** __%s__ Ucp milik anda berhasil di buat, check dm anda.", Nama_UCP);
		SendDiscordMessage(7, dc);
		DCC_CreatePrivateChannel(user, "DCC_DM_EMBED", "sds", Nama_UCP, verifycode, DiscordID);
		printf("Created private channel for user: %s", DiscordID); // Debugging output
	}
	return 1;
}

forward CheckDiscordID(DiscordID[], Nama_UCP[]);
public CheckDiscordID(DiscordID[], Nama_UCP[])
{
	new rows = cache_num_rows(), ucp[20], dc[100];
	if(rows > 0)
	{
		cache_get_value_name(0, "ucp", ucp);

		format(dc, sizeof(dc),  "**[INFO]:** Kamu sudah mendaftar UCP sebelumnya dengan nama **%s**", ucp);
		return SendDiscordMessage(7, dc);
	}
	else 
	{
		new characterQuery[178];
		mysql_format(g_SQL, characterQuery, sizeof(characterQuery), "SELECT * FROM `playerucp` WHERE `ucp` = '%s'", Nama_UCP);
		mysql_tquery(g_SQL, characterQuery, "CheckDiscordUCP", "ss", DiscordID, Nama_UCP);
	}
	return 1;
}

DCMD:register(user, channel, params[])
{
	new id[21];
    if(channel != DCC_FindChannelById("1028316848355295264"))
		return 1;
    if(isnull(params)) 
		return DCC_SendChannelMessage(channel, "**[GUNAKAN]:** __!register__ [UCP NAME]");
	if(!IsValidNameUCP(params))
		return DCC_SendChannelMessage(channel, "**Gunakan nama UCP bukan nama IC!**");
	
	DCC_GetUserId(user, id, sizeof id);

	new characterQuery[178];
	mysql_format(g_SQL, characterQuery, sizeof(characterQuery), "SELECT * FROM `playerucp` WHERE `DiscordID` = '%s'", id);
	mysql_tquery(g_SQL, characterQuery, "CheckDiscordID", "ss", id, params);
	return 1;
}

DCMD:reffucp(user, channel, params[])
{
	new id[21];
    if(channel != DCC_FindChannelById("1028316848355295264"))
		return 1;
    if(isnull(params)) 
		return DCC_SendChannelMessage(channel, "**[GUNAKAN]:** __!reffucp__ [UCP NAME]");
	if(!IsValidNameUCP(params))
		return DCC_SendChannelMessage(channel, "**Gunakan nama UCP anda nama IC!**");
	
	DCC_GetUserId(user, id, sizeof id);
	new uname[33];
	DCC_GetUserName(user, uname);

	DCC_SendChannelMessage(channel, "Perintah berhasil disubmit, mohon tunggu hasil pemeriksaan dari kami!");
	new zQuery[256];
	mysql_format(g_SQL, zQuery, sizeof(zQuery), "SELECT * FROM `playerucp` WHERE `discordID` = '%e' LIMIT 1", id);
	new Cache:ex = mysql_query(g_SQL, zQuery, true);
	new count = cache_num_rows();
	if(count > 0)
	{
		new str[256];
		format(str, sizeof(str), "```:x: Hai %s, anda sudah pernah mendaftar dan tidak bisa lagi mengambil Karcis.Silahkan ke channel <#1095732559897444394> untuk refund role dan di cek oleh staff!```", uname);
		DCC_SendChannelMessage(channel, str);
	}
	else
	{
    	new characterQuery[178];
		mysql_format(g_SQL, characterQuery, sizeof(characterQuery), "SELECT * FROM `playerucp` WHERE `DiscordID` = '%s'", id);
		mysql_tquery(g_SQL, characterQuery, "CheckDiscordID", "ss", id, params);
		DCC_SendChannelMessage(channel, "```Ucp anda berhasil diverifikasi,silahkan cek pm dari KotBer Bot!```");
	}
    cache_delete(ex);
	return 1;
}

DCMD:players(user, channel, params[])
{
	foreach(new i : Player)
	{
		new DCC_Embed:embed = DCC_CreateEmbed(.title = "Negeriku Emperial - Samp indonesia");
		new str1[100], str2[100], name[MAX_PLAYER_NAME+1];
		GetPlayerName(i, name, sizeof(name));

		format(str1, sizeof str1, "**🔴 IP Address**");
		format(str2, sizeof str2, "\n203.27.106.17:7777");
		DCC_AddEmbedField(embed, str1, str2, false);
		format(str1, sizeof str1, "**📍 Website**");
		format(str2, sizeof str2, "\ncooming soon");
		DCC_AddEmbedField(embed, str1, str2, false);
		format(str1, sizeof str1, "**👦 Players**");
		format(str2, sizeof str2, "\n%d Online", pemainic);
		DCC_AddEmbedField(embed, str1, str2, false);
		format(str1, sizeof str1, "**📁 Gamemode**");
		format(str2, sizeof str2, "\nNEGERIKU v1.1.0");
		DCC_AddEmbedField(embed, str1, str2, false);
		format(str1, sizeof str1, "__[ID]\tNama\tLevel\tPing__\n");
		format(str2, sizeof str2, "**%i\t%s\t%i\t%i**\n", i, name, GetPlayerScore(i), GetPlayerPing(i));
		DCC_AddEmbedField(embed, str1, str2, false);

		DCC_SendChannelEmbedMessage(channel, embed);
		return 1;
	}
	return 1;
}
