#define DIALOG_PUSNAKER 1539

new PlayerJobLeaveTime[MAX_PLAYERS];

//---------------[Pusat Tenaga Kerja]---------------
stock OpenPusnakerMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_PUSNAKER, DIALOG_STYLE_LIST, "{15D4ED}/{ffffff} Pusat Tenaga Kerja - Kota", 
                     "Pekerja Taxi\nPekerja Mekanik\nPenebang Pohon\nSopir Truk\nPekerja Tambang\nBuruh Pabrik\nPekerja Tani\nPekerja Kurir\nPekerja Bandara\n{FF0000}Keluar Pekerjaan", 
                     "Pilih", "Tutup");
    return 1;
}

CMD:prabro(playerid, params[])
{
    if(pData[playerid][pJob] == 0) return Error(playerid, "Anda tidak memiliki pekerjaan apapun.");
    
    new currentTime = gettime();
    if (currentTime - PlayerJobLeaveTime[playerid] < 10800) // 3 jam (10.800 detik)
    {
        return Error(playerid, "Anda harus menunggu 3 jam sebelum keluar pekerjaan lagi.");
    }
    
    pData[playerid][pJob] = 0;
    PlayerJobLeaveTime[playerid] = currentTime; // Simpan waktu saat keluar kerja
    Info(playerid, "Anda berhasil keluar dari pekerjaan anda.");
    Servers(playerid, "Gunakan {FFFF00}'/Delays' {FFFFFF}Untuk melihat kapan anda bisa keluar pekerjaan kembali.");

    return 1;
}