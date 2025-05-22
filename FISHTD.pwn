/*
    SHARE NAME : AGUSSAMP
    LINK DISCORD : https://discord.gg/PvuE2Fxzg6
*/

new ProgresFish[MAX_PLAYERS];
new StartFish[MAX_PLAYERS];
new RandIkan[MAX_PLAYERS];
new PlayerText:FISHTD[MAX_PLAYERS][13];
new PlayerText:FISHKANANM[MAX_PLAYERS];
new PlayerText:FISHBAWA[MAX_PLAYERS];
new PlayerText:FISHATAS[MAX_PLAYERS];
new PlayerText:FISHKIRI[MAX_PLAYERS];

new Text:FISHTDNEW[17];
new FishTimerTD[MAX_PLAYERS];

public OnGameModeInit()
{
    FISHTDNEW[0] = TextDrawCreate(536.500000, 143.000000, "ld_dual:white");
    TextDrawFont(FISHTDNEW[0], 4);
    TextDrawLetterSize(FISHTDNEW[0], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[0], 59.000000, 212.500000);
    TextDrawSetOutline(FISHTDNEW[0], 1);
    TextDrawSetShadow(FISHTDNEW[0], 0);
    TextDrawAlignment(FISHTDNEW[0], 1);
    TextDrawColor(FISHTDNEW[0], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[0], 255);
    TextDrawBoxColor(FISHTDNEW[0], 50);
    TextDrawUseBox(FISHTDNEW[0], 1);
    TextDrawSetProportional(FISHTDNEW[0], 1);
    TextDrawSetSelectable(FISHTDNEW[0], 0);

    FISHTDNEW[1] = TextDrawCreate(533.500000, 130.000000, "ld_beat:chit");
    TextDrawFont(FISHTDNEW[1], 4);
    TextDrawLetterSize(FISHTDNEW[1], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[1], 18.500000, 24.000000);
    TextDrawSetOutline(FISHTDNEW[1], 1);
    TextDrawSetShadow(FISHTDNEW[1], 0);
    TextDrawAlignment(FISHTDNEW[1], 1);
    TextDrawColor(FISHTDNEW[1], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[1], 255);
    TextDrawBoxColor(FISHTDNEW[1], 50);
    TextDrawUseBox(FISHTDNEW[1], 1);
    TextDrawSetProportional(FISHTDNEW[1], 1);
    TextDrawSetSelectable(FISHTDNEW[1], 0);

    FISHTDNEW[2] = TextDrawCreate(579.000000, 130.000000, "ld_beat:chit");
    TextDrawFont(FISHTDNEW[2], 4);
    TextDrawLetterSize(FISHTDNEW[2], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[2], 19.500000, 24.000000);
    TextDrawSetOutline(FISHTDNEW[2], 1);
    TextDrawSetShadow(FISHTDNEW[2], 0);
    TextDrawAlignment(FISHTDNEW[2], 1);
    TextDrawColor(FISHTDNEW[2], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[2], 255);
    TextDrawBoxColor(FISHTDNEW[2], 50);
    TextDrawUseBox(FISHTDNEW[2], 1);
    TextDrawSetProportional(FISHTDNEW[2], 1);
    TextDrawSetSelectable(FISHTDNEW[2], 0);

    FISHTDNEW[3] = TextDrawCreate(579.000000, 344.000000, "ld_beat:chit");
    TextDrawFont(FISHTDNEW[3], 4);
    TextDrawLetterSize(FISHTDNEW[3], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[3], 19.500000, 24.000000);
    TextDrawSetOutline(FISHTDNEW[3], 1);
    TextDrawSetShadow(FISHTDNEW[3], 0);
    TextDrawAlignment(FISHTDNEW[3], 1);
    TextDrawColor(FISHTDNEW[3], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[3], 255);
    TextDrawBoxColor(FISHTDNEW[3], 50);
    TextDrawUseBox(FISHTDNEW[3], 1);
    TextDrawSetProportional(FISHTDNEW[3], 1);
    TextDrawSetSelectable(FISHTDNEW[3], 0);

    FISHTDNEW[4] = TextDrawCreate(533.500000, 344.000000, "ld_beat:chit");
    TextDrawFont(FISHTDNEW[4], 4);
    TextDrawLetterSize(FISHTDNEW[4], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[4], 19.500000, 24.000000);
    TextDrawSetOutline(FISHTDNEW[4], 1);
    TextDrawSetShadow(FISHTDNEW[4], 0);
    TextDrawAlignment(FISHTDNEW[4], 1);
    TextDrawColor(FISHTDNEW[4], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[4], 255);
    TextDrawBoxColor(FISHTDNEW[4], 50);
    TextDrawUseBox(FISHTDNEW[4], 1);
    TextDrawSetProportional(FISHTDNEW[4], 1);
    TextDrawSetSelectable(FISHTDNEW[4], 0);

    FISHTDNEW[5] = TextDrawCreate(542.500000, 134.000000, "ld_dual:white");
    TextDrawFont(FISHTDNEW[5], 4);
    TextDrawLetterSize(FISHTDNEW[5], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[5], 47.000000, 230.000000);
    TextDrawSetOutline(FISHTDNEW[5], 1);
    TextDrawSetShadow(FISHTDNEW[5], 0);
    TextDrawAlignment(FISHTDNEW[5], 1);
    TextDrawColor(FISHTDNEW[5], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[5], 255);
    TextDrawBoxColor(FISHTDNEW[5], 50);
    TextDrawUseBox(FISHTDNEW[5], 1);
    TextDrawSetProportional(FISHTDNEW[5], 1);
    TextDrawSetSelectable(FISHTDNEW[5], 0);

    FISHTDNEW[6] = TextDrawCreate(516.500000, 130.000000, "ld_beat:chit");
    TextDrawFont(FISHTDNEW[6], 4);
    TextDrawLetterSize(FISHTDNEW[6], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[6], 19.000000, 24.000000);
    TextDrawSetOutline(FISHTDNEW[6], 1);
    TextDrawSetShadow(FISHTDNEW[6], 0);
    TextDrawAlignment(FISHTDNEW[6], 1);
    TextDrawColor(FISHTDNEW[6], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[6], 255);
    TextDrawBoxColor(FISHTDNEW[6], 50);
    TextDrawUseBox(FISHTDNEW[6], 1);
    TextDrawSetProportional(FISHTDNEW[6], 1);
    TextDrawSetSelectable(FISHTDNEW[6], 0);

    FISHTDNEW[7] = TextDrawCreate(516.500000, 344.000000, "ld_beat:chit");
    TextDrawFont(FISHTDNEW[7], 4);
    TextDrawLetterSize(FISHTDNEW[7], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[7], 19.000000, 24.000000);
    TextDrawSetOutline(FISHTDNEW[7], 1);
    TextDrawSetShadow(FISHTDNEW[7], 0);
    TextDrawAlignment(FISHTDNEW[7], 1);
    TextDrawColor(FISHTDNEW[7], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[7], 255);
    TextDrawBoxColor(FISHTDNEW[7], 50);
    TextDrawUseBox(FISHTDNEW[7], 1);
    TextDrawSetProportional(FISHTDNEW[7], 1);
    TextDrawSetSelectable(FISHTDNEW[7], 0);

    FISHTDNEW[8] = TextDrawCreate(519.500000, 143.000000, "ld_dual:white");
    TextDrawFont(FISHTDNEW[8], 4);
    TextDrawLetterSize(FISHTDNEW[8], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[8], 13.000000, 212.500000);
    TextDrawSetOutline(FISHTDNEW[8], 1);
    TextDrawSetShadow(FISHTDNEW[8], 0);
    TextDrawAlignment(FISHTDNEW[8], 1);
    TextDrawColor(FISHTDNEW[8], 488447487);
    TextDrawBackgroundColor(FISHTDNEW[8], 255);
    TextDrawBoxColor(FISHTDNEW[8], 50);
    TextDrawUseBox(FISHTDNEW[8], 1);
    TextDrawSetProportional(FISHTDNEW[8], 1);
    TextDrawSetSelectable(FISHTDNEW[8], 0);

    FISHTDNEW[9] = TextDrawCreate(549.000000, 137.000000, "FISH INFO");
    TextDrawFont(FISHTDNEW[9], 1);
    TextDrawLetterSize(FISHTDNEW[9], 0.200000, 0.899999);
    TextDrawTextSize(FISHTDNEW[9], 620.000000, 17.000000);
    TextDrawSetOutline(FISHTDNEW[9], 0);
    TextDrawSetShadow(FISHTDNEW[9], 0);
    TextDrawAlignment(FISHTDNEW[9], 1);
    TextDrawColor(FISHTDNEW[9], -1);
    TextDrawBackgroundColor(FISHTDNEW[9], 255);
    TextDrawBoxColor(FISHTDNEW[9], 50);
    TextDrawUseBox(FISHTDNEW[9], 0);
    TextDrawSetProportional(FISHTDNEW[9], 1);
    TextDrawSetSelectable(FISHTDNEW[9], 0);

    FISHTDNEW[10] = TextDrawCreate(565.000000, 213.000000, "TYPE");
    TextDrawFont(FISHTDNEW[10], 1);
    TextDrawLetterSize(FISHTDNEW[10], 0.174999, 0.799998);
    TextDrawTextSize(FISHTDNEW[10], 620.000000, 17.000000);
    TextDrawSetOutline(FISHTDNEW[10], 0);
    TextDrawSetShadow(FISHTDNEW[10], 0);
    TextDrawAlignment(FISHTDNEW[10], 2);
    TextDrawColor(FISHTDNEW[10], -1);
    TextDrawBackgroundColor(FISHTDNEW[10], 255);
    TextDrawBoxColor(FISHTDNEW[10], 50);
    TextDrawUseBox(FISHTDNEW[10], 0);
    TextDrawSetProportional(FISHTDNEW[10], 1);
    TextDrawSetSelectable(FISHTDNEW[10], 0);

    FISHTDNEW[11] = TextDrawCreate(565.000000, 254.000000, "PRICE");
    TextDrawFont(FISHTDNEW[11], 1);
    TextDrawLetterSize(FISHTDNEW[11], 0.174999, 0.799998);
    TextDrawTextSize(FISHTDNEW[11], 620.000000, 17.000000);
    TextDrawSetOutline(FISHTDNEW[11], 0);
    TextDrawSetShadow(FISHTDNEW[11], 0);
    TextDrawAlignment(FISHTDNEW[11], 2);
    TextDrawColor(FISHTDNEW[11], -1);
    TextDrawBackgroundColor(FISHTDNEW[11], 255);
    TextDrawBoxColor(FISHTDNEW[11], 50);
    TextDrawUseBox(FISHTDNEW[11], 0);
    TextDrawSetProportional(FISHTDNEW[11], 1);
    TextDrawSetSelectable(FISHTDNEW[11], 0);

    FISHTDNEW[12] = TextDrawCreate(565.000000, 302.000000, "FISH WEIGHT");
    TextDrawFont(FISHTDNEW[12], 1);
    TextDrawLetterSize(FISHTDNEW[12], 0.174999, 0.799998);
    TextDrawTextSize(FISHTDNEW[12], 620.000000, 73.000000);
    TextDrawSetOutline(FISHTDNEW[12], 0);
    TextDrawSetShadow(FISHTDNEW[12], 0);
    TextDrawAlignment(FISHTDNEW[12], 2);
    TextDrawColor(FISHTDNEW[12], -1);
    TextDrawBackgroundColor(FISHTDNEW[12], 255);
    TextDrawBoxColor(FISHTDNEW[12], 50);
    TextDrawUseBox(FISHTDNEW[12], 0);
    TextDrawSetProportional(FISHTDNEW[12], 1);
    TextDrawSetSelectable(FISHTDNEW[12], 0);

    FISHTDNEW[13] = TextDrawCreate(602.000000, 136.000000, "Preview_Model");
    TextDrawFont(FISHTDNEW[13], 5);
    TextDrawLetterSize(FISHTDNEW[13], 0.600000, 2.000000);
    TextDrawTextSize(FISHTDNEW[13], -66.000000, 73.500000);
    TextDrawSetOutline(FISHTDNEW[13], 0);
    TextDrawSetShadow(FISHTDNEW[13], 0);
    TextDrawAlignment(FISHTDNEW[13], 1);
    TextDrawColor(FISHTDNEW[13], -1);
    TextDrawBackgroundColor(FISHTDNEW[13], 0);
    TextDrawBoxColor(FISHTDNEW[13], 255);
    TextDrawUseBox(FISHTDNEW[13], 0);
    TextDrawSetProportional(FISHTDNEW[13], 1);
    TextDrawSetSelectable(FISHTDNEW[13], 0);
    TextDrawSetPreviewModel(FISHTDNEW[13], 19630);
    TextDrawSetPreviewRot(FISHTDNEW[13], -10.000000, 0.000000, -20.000000, 1.000000);
    TextDrawSetPreviewVehCol(FISHTDNEW[13], 1, 1);

    FISHTDNEW[14] = TextDrawCreate(565.000000, 220.000000, "Ikan Kerapu");
    TextDrawFont(FISHTDNEW[14], 1);
    TextDrawLetterSize(FISHTDNEW[14], 0.158333, 0.799998);
    TextDrawTextSize(FISHTDNEW[14], 620.000000, 60.000000);
    TextDrawSetOutline(FISHTDNEW[14], 0);
    TextDrawSetShadow(FISHTDNEW[14], 0);
    TextDrawAlignment(FISHTDNEW[14], 2);
    TextDrawColor(FISHTDNEW[14], -65281);
    TextDrawBackgroundColor(FISHTDNEW[14], 255);
    TextDrawBoxColor(FISHTDNEW[14], 50);
    TextDrawUseBox(FISHTDNEW[14], 0);
    TextDrawSetProportional(FISHTDNEW[14], 1);
    TextDrawSetSelectable(FISHTDNEW[14], 0);

    FISHTDNEW[15] = TextDrawCreate(565.000000, 261.000000, "Rp8,000");
    TextDrawFont(FISHTDNEW[15], 1);
    TextDrawLetterSize(FISHTDNEW[15], 0.158333, 0.799998);
    TextDrawTextSize(FISHTDNEW[15], 620.000000, 60.000000);
    TextDrawSetOutline(FISHTDNEW[15], 0);
    TextDrawSetShadow(FISHTDNEW[15], 0);
    TextDrawAlignment(FISHTDNEW[15], 2);
    TextDrawColor(FISHTDNEW[15], -65281);
    TextDrawBackgroundColor(FISHTDNEW[15], 255);
    TextDrawBoxColor(FISHTDNEW[15], 50);
    TextDrawUseBox(FISHTDNEW[15], 0);
    TextDrawSetProportional(FISHTDNEW[15], 1);
    TextDrawSetSelectable(FISHTDNEW[15], 0);

    FISHTDNEW[16] = TextDrawCreate(565.000000, 309.000000, "0.5kg");
    TextDrawFont(FISHTDNEW[16], 1);
    TextDrawLetterSize(FISHTDNEW[16], 0.158333, 0.799998);
    TextDrawTextSize(FISHTDNEW[16], 620.000000, 60.000000);
    TextDrawSetOutline(FISHTDNEW[16], 0);
    TextDrawSetShadow(FISHTDNEW[16], 0);
    TextDrawAlignment(FISHTDNEW[16], 2);
    TextDrawColor(FISHTDNEW[16], -65281);
    TextDrawBackgroundColor(FISHTDNEW[16], 255);
    TextDrawBoxColor(FISHTDNEW[16], 50);
    TextDrawUseBox(FISHTDNEW[16], 0);
    TextDrawSetProportional(FISHTDNEW[16], 1);
    TextDrawSetSelectable(FISHTDNEW[16], 0);


    return 1;
}

public OnPlayerConnect(playerid)
{
    FISHTD[playerid][0] = CreatePlayerTextDraw(playerid, 261.000000, 121.000000, "ld_dual:white");
    PlayerTextDrawFont(playerid, FISHTD[playerid][0], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][0], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][0], 124.500000, 37.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][0], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][0], 255);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][0], 0);

    FISHTD[playerid][1] = CreatePlayerTextDraw(playerid, 267.000000, 123.000000, "ld_beat:right");
    PlayerTextDrawFont(playerid, FISHTD[playerid][1], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][1], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][1], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][1], 0);

    FISHTD[playerid][2] = CreatePlayerTextDraw(playerid, 287.000000, 123.000000, "ld_beat:right");
    PlayerTextDrawFont(playerid, FISHTD[playerid][2], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][2], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][2], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][2], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][2], 0);

    FISHTD[playerid][3] = CreatePlayerTextDraw(playerid, 307.000000, 123.000000, "ld_beat:right");
    PlayerTextDrawFont(playerid, FISHTD[playerid][3], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][3], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][3], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][3], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][3], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][3], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][3], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][3], 0);

    FISHTD[playerid][4] = CreatePlayerTextDraw(playerid, 327.000000, 123.000000, "ld_beat:down");
    PlayerTextDrawFont(playerid, FISHTD[playerid][4], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][4], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][4], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][4], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][4], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][4], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][4], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][4], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][4], 0);

    FISHTD[playerid][5] = CreatePlayerTextDraw(playerid, 346.000000, 123.000000, "ld_beat:down");
    PlayerTextDrawFont(playerid, FISHTD[playerid][5], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][5], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][5], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][5], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][5], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][5], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][5], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][5], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][5], 0);

    FISHTD[playerid][6] = CreatePlayerTextDraw(playerid, 366.000000, 123.000000, "ld_beat:left");
    PlayerTextDrawFont(playerid, FISHTD[playerid][6], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][6], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][6], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][6], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][6], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][6], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][6], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][6], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][6], 0);

    FISHTD[playerid][7] = CreatePlayerTextDraw(playerid, 267.000000, 140.000000, "ld_beat:up");
    PlayerTextDrawFont(playerid, FISHTD[playerid][7], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][7], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][7], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][7], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][7], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][7], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][7], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][7], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][7], 0);

    FISHTD[playerid][8] = CreatePlayerTextDraw(playerid, 286.000000, 140.000000, "ld_beat:up");
    PlayerTextDrawFont(playerid, FISHTD[playerid][8], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][8], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][8], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][8], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][8], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][8], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][8], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][8], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][8], 0);

    FISHTD[playerid][9] = CreatePlayerTextDraw(playerid, 306.000000, 140.000000, "ld_beat:up");
    PlayerTextDrawFont(playerid, FISHTD[playerid][9], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][9], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][9], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][9], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][9], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][9], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][9], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][9], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][9], 0);

    FISHTD[playerid][10] = CreatePlayerTextDraw(playerid, 327.000000, 140.000000, "ld_beat:down");
    PlayerTextDrawFont(playerid, FISHTD[playerid][10], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][10], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][10], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][10], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][10], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][10], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][10], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][10], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][10], 0);

    FISHTD[playerid][11] = CreatePlayerTextDraw(playerid, 346.000000, 140.000000, "ld_beat:down");
    PlayerTextDrawFont(playerid, FISHTD[playerid][11], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][11], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][11], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][11], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][11], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][11], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][11], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][11], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][11], 0);

    FISHTD[playerid][12] = CreatePlayerTextDraw(playerid, 367.000000, 140.000000, "ld_beat:down");
    PlayerTextDrawFont(playerid, FISHTD[playerid][12], 4);
    PlayerTextDrawLetterSize(playerid, FISHTD[playerid][12], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHTD[playerid][12], 14.500000, 14.500000);
    PlayerTextDrawSetOutline(playerid, FISHTD[playerid][12], 1);
    PlayerTextDrawSetShadow(playerid, FISHTD[playerid][12], 0);
    PlayerTextDrawAlignment(playerid, FISHTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, FISHTD[playerid][12], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHTD[playerid][12], 255);
    PlayerTextDrawBoxColor(playerid, FISHTD[playerid][12], 50);
    PlayerTextDrawUseBox(playerid, FISHTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, FISHTD[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, FISHTD[playerid][12], 0);

    FISHKANANM[playerid] = CreatePlayerTextDraw(playerid, 347.000000, 260.000000, "ld_beat:right");
    PlayerTextDrawFont(playerid, FISHKANANM[playerid], 4);
    PlayerTextDrawLetterSize(playerid, FISHKANANM[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHKANANM[playerid], 20.000000, 20.000000);
    PlayerTextDrawSetOutline(playerid, FISHKANANM[playerid], 1);
    PlayerTextDrawSetShadow(playerid, FISHKANANM[playerid], 0);
    PlayerTextDrawAlignment(playerid, FISHKANANM[playerid], 1);
    PlayerTextDrawColor(playerid, FISHKANANM[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHKANANM[playerid], 255);
    PlayerTextDrawBoxColor(playerid, FISHKANANM[playerid], 50);
    PlayerTextDrawUseBox(playerid, FISHKANANM[playerid], 1);
    PlayerTextDrawSetProportional(playerid, FISHKANANM[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, FISHKANANM[playerid], 1);

    FISHBAWA[playerid] = CreatePlayerTextDraw(playerid, 316.000000, 293.000000, "ld_beat:down");
    PlayerTextDrawFont(playerid, FISHBAWA[playerid], 4);
    PlayerTextDrawLetterSize(playerid, FISHBAWA[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHBAWA[playerid], 20.000000, 20.000000);
    PlayerTextDrawSetOutline(playerid, FISHBAWA[playerid], 1);
    PlayerTextDrawSetShadow(playerid, FISHBAWA[playerid], 0);
    PlayerTextDrawAlignment(playerid, FISHBAWA[playerid], 1);
    PlayerTextDrawColor(playerid, FISHBAWA[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHBAWA[playerid], 255);
    PlayerTextDrawBoxColor(playerid, FISHBAWA[playerid], 50);
    PlayerTextDrawUseBox(playerid, FISHBAWA[playerid], 1);
    PlayerTextDrawSetProportional(playerid, FISHBAWA[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, FISHBAWA[playerid], 1);

    FISHATAS[playerid] = CreatePlayerTextDraw(playerid, 316.000000, 228.000000, "ld_beat:up");
    PlayerTextDrawFont(playerid, FISHATAS[playerid], 4);
    PlayerTextDrawLetterSize(playerid, FISHATAS[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHATAS[playerid], 20.000000, 20.000000);
    PlayerTextDrawSetOutline(playerid, FISHATAS[playerid], 1);
    PlayerTextDrawSetShadow(playerid, FISHATAS[playerid], 0);
    PlayerTextDrawAlignment(playerid, FISHATAS[playerid], 1);
    PlayerTextDrawColor(playerid, FISHATAS[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHATAS[playerid], 255);
    PlayerTextDrawBoxColor(playerid, FISHATAS[playerid], 50);
    PlayerTextDrawUseBox(playerid, FISHATAS[playerid], 1);
    PlayerTextDrawSetProportional(playerid, FISHATAS[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, FISHATAS[playerid], 1);

    FISHKIRI[playerid] = CreatePlayerTextDraw(playerid, 287.000000, 260.000000, "ld_beat:left");
    PlayerTextDrawFont(playerid, FISHKIRI[playerid], 4);
    PlayerTextDrawLetterSize(playerid, FISHKIRI[playerid], 0.600000, 2.000000);
    PlayerTextDrawTextSize(playerid, FISHKIRI[playerid], 20.000000, 20.000000);
    PlayerTextDrawSetOutline(playerid, FISHKIRI[playerid], 1);
    PlayerTextDrawSetShadow(playerid, FISHKIRI[playerid], 0);
    PlayerTextDrawAlignment(playerid, FISHKIRI[playerid], 1);
    PlayerTextDrawColor(playerid, FISHKIRI[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, FISHKIRI[playerid], 255);
    PlayerTextDrawBoxColor(playerid, FISHKIRI[playerid], 50);
    PlayerTextDrawUseBox(playerid, FISHKIRI[playerid], 1);
    PlayerTextDrawSetProportional(playerid, FISHKIRI[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, FISHKIRI[playerid], 1);
    return 1;
}

public ClickDynamicPlayerTextdraw(playerid, PlayerText:playertextid)
{
    if(playertextid == FISHATAS[playerid])
    {
        if(PlayerInfo[playerid][pBait] < 1) return ShowError(playerid, "Anda tdak memiliki umpan");
        ProgresFish[playerid] += 10;
        UpdateTextDrawnFish(playerid);
    }
    if(playertextid == FISHBAWA[playerid])
    {
        if(PlayerInfo[playerid][pBait] < 1) return ShowError(playerid, "Anda tdak memiliki umpan");
        ProgresFish[playerid] += 10;
        UpdateTextDrawnFish(playerid);
    }
    if(playertextid == FISHKANANM[playerid])
    {
        if(PlayerInfo[playerid][pBait] < 1) return ShowError(playerid, "Anda tdak memiliki umpan");
        ProgresFish[playerid] += 10;
        UpdateTextDrawnFish(playerid);
    }
    if(playertextid == FISHKIRI[playerid])
    {
        if(PlayerInfo[playerid][pBait] < 1) return ShowError(playerid, "Anda tdak memiliki umpan");
        ProgresFish[playerid] += 10;
        UpdateTextDrawnFish(playerid);
    }
	return 1;
}
CMD:fish(playerid)
{
    if(GetPVarInt(playerid,"Fishing") == 0)
    {
        SetPVarInt(playerid,"Fishing",1);
        StartFish[playerid] = 1;
        TogglePlayerControllable(playerid, 0);
        ApplyAnimation(playerid,"SWORD","sword_block",50.0 ,0,1,0,1,1);
        SetPlayerAttachedObject(playerid, 9,18632,6,0.079376,0.037070,0.007706,181.482910,0.000000,0.000000,1.000000,1.000000,1.000000);
        PlayerTextDrawShow(playerid, FISHTD[playerid][0]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][1]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][2]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][3]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][4]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][5]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][6]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][7]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][8]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][9]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][10]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][11]);
        PlayerTextDrawShow(playerid, FISHTD[playerid][12]);
        PlayerTextDrawShow(playerid, FISHKANANM[playerid]);
        PlayerTextDrawShow(playerid, FISHBAWA[playerid]);
        PlayerTextDrawShow(playerid, FISHATAS[playerid]);
        PlayerTextDrawShow(playerid, FISHKIRI[playerid]);
        SelectTextDraw(playerid, 0xFF0000FF);
    }
    else if(GetPVarInt(playerid,"Fishing") == 1)
    {
        SetPVarInt(playerid,"Fishing",0);
        StartFish[playerid] = 0;
        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);
        StopLoopingAnim(playerid);
        RemovePlayerAttachedObject(playerid, 9);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        PlayerTextDrawHide(playerid, FISHTD[playerid][0]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][1]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][2]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][3]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][4]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][5]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][6]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][7]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][8]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][9]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][10]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][11]);
        PlayerTextDrawHide(playerid, FISHTD[playerid][12]);
        PlayerTextDrawHide(playerid, FISHKANANM[playerid]);
        PlayerTextDrawHide(playerid, FISHBAWA[playerid]);
        PlayerTextDrawHide(playerid, FISHATAS[playerid]);
        PlayerTextDrawHide(playerid, FISHKIRI[playerid]);
        CancelSelectTextDraw(playerid);
    }
    return 1;
}

epublic: FishRandom(playerid)
{
    new rand = random(5);
    RandIkan[playerid] = rand;
    if(RandIkan[playerid] == 1)
    {
        RandIkan[playerid] = 0;
        ProgresFish[playerid] = 0;
        PlayerInfo[playerid][pIkan] += 3;
        PlayerInfo[playerid][pBait] -= 3;
        ShowFish(playerid);
        FishTimerTD[playerid] = SetTimerEx("HideFish", 3000, true, "d", playerid);
    }
    else if(RandIkan[playerid] == 2)
    {
        RandIkan[playerid] = 0;
        ProgresFish[playerid] = 0;
        PlayerInfo[playerid][pSampah] += 1;
        PlayerInfo[playerid][pBait] -= 1;
        ShowItemBox(playerid, "Sampah", "ADD_1x", 1265, 3);
    }
    else if(RandIkan[playerid] == 3)
    {
        RandIkan[playerid] = 0;
        ProgresFish[playerid] = 0;
        PlayerInfo[playerid][pIkan] += 1;
        PlayerInfo[playerid][pBait] -= 1;
        ShowFish(playerid);
        FishTimerTD[playerid] = SetTimerEx("HideFish", 3000, true, "d", playerid);
    }
    else if(RandIkan[playerid] == 4)
    {
        RandIkan[playerid] = 0;
        ProgresFish[playerid] = 0;
        PlayerInfo[playerid][pSampah] += 2;
        PlayerInfo[playerid][pBait] -= 2;
        ShowItemBox(playerid, "Sampah", "ADD_1x", 1265, 3);
    }
    else if(RandIkan[playerid] == 5)
    {
        RandIkan[playerid] = 0;
        ProgresFish[playerid] = 0;
        PlayerInfo[playerid][pIkan] += 2;
        PlayerInfo[playerid][pBait] -= 2;
        ShowFish(playerid);
        FishTimerTD[playerid] = SetTimerEx("HideFish", 3000, true, "d", playerid);
    }
    UpdateNewALL(playerid);
    return 1;
}
epublic: UpdateTextDrawnFish(playerid)
{
    if(StartFish[playerid] == 0)
    {
        if(ProgresFish[playerid] <= 10)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][1], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][1]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][2], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][2]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][3], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][3]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][4], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][4]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][5], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][5]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][6], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][6]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][7], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][7]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][8], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][8]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][9], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][9]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][10], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][10]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][11], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][11]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][12], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][12]);
        }
    }
    if(StartFish[playerid] == 1)
    {
        if(ProgresFish[playerid] >= 10)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][1], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][1]);
        }
        if(ProgresFish[playerid] >= 20)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][2], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][2]);
        }
        if(ProgresFish[playerid] >= 30)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][3], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][3]);
        }
        if(ProgresFish[playerid] >= 40)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][4], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][4]);
        }
        if(ProgresFish[playerid] >= 50)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][5], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][5]);
        }
        if(ProgresFish[playerid] >= 60)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][6], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][6]);
        }
        if(ProgresFish[playerid] >= 70)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][7], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][7]);
        }
        if(ProgresFish[playerid] >= 80)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][8], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][8]);
        }
        if(ProgresFish[playerid] >= 90)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][9], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][9]);
        }
        if(ProgresFish[playerid] >= 100)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][10], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][10]);
        }
        if(ProgresFish[playerid] >= 110)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][11], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][11]);
        }
        if(ProgresFish[playerid] >= 120)
        {
            PlayerTextDrawColor(playerid, FISHTD[playerid][12], 852308735);
            PlayerTextDrawShow(playerid, FISHTD[playerid][12]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][1], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][1]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][2], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][2]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][3], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][3]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][4], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][4]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][5], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][5]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][6], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][6]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][7], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][7]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][8], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][8]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][9], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][9]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][10], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][10]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][11], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][11]);
            PlayerTextDrawColor(playerid, FISHTD[playerid][12], -1);
            PlayerTextDrawShow(playerid, FISHTD[playerid][12]);
            FishRandom(playerid);
        }
    }
    return 1;
}