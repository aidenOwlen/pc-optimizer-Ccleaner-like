
#RequireAdmin
#include<GuiConstantsEx.au3>
#include<Staticconstants.au3>
#include<EditConstants.au3>
#include<ColorConstants.au3>
#include<WindowsConstants.Au3>
#include<Constants.au3>
#include<ButtonConstants.au3>
#include<ProgressConstants.au3>
#include<MsgBoxConstants.au3>
#include<StringConstants.au3>
#include<File.au3>
#include<FileConstants.au3>
#include<FontConstants.au3>
#include<ListViewConstants.au3>
#include <GuiListView.au3>
#include <Date.au3>
#include "GIFAnimation.au3"

ShellExecute("www.roadrunneroptimizer.com")
opt("GuiOnEventMode", 1)
$StartScan = False
$Start_ = False

DirCreate(@SCRIPTDIR & "\imageBooster")
Global $Drive = "C:\"
If FileExists(@APPDATADIR & "\sik.cmd") then
   _Rc()
Else
   _FileCreate(@APPDATADIR & "\sik.cmd")
EndIf

FileInstall("C:\Users\Borkar\Desktop\fermer.jpg", @SCRIPTDIR & "\imageBooster\fermer.jpg")
FileInstall("C:\Users\Borkar\Desktop\customservice.jpg", @SCRIPTDIR & "\imageBooster\customservice.jpg")
FileInstall("C:\Users\Borkar\Desktop\Network.jpg", @SCRIPTDIR & "\imageBooster\Network.jpg")
FileInstall("C:\Users\Borkar\Desktop\WinUpdate.jpg", @SCRIPTDIR & "\imageBooster\WinUpdate.jpg")
FileInstall("C:\Users\Borkar\Desktop\defrag.jpg", @SCRIPTDIR & "\imageBooster\defrag.jpg")
FileInstall("C:\Users\Borkar\Desktop\control.jpg", @SCRIPTDIR & "\imageBooster\control.jpg")
FileInstall("C:\Users\Borkar\Desktop\restore.jpg", @SCRIPTDIR & "\imageBooster\restore.jpg")
FileInstall("C:\Users\Borkar\Desktop\LiveChat2.jpg", @SCRIPTDIR & "\imageBooster\LiveChat2.jpg")
FileInstall("C:\Users\Borkar\Desktop\program.jpg", @SCRIPTDIR & "\imageBooster\program.jpg")
FileInstall("C:\Users\Borkar\Desktop\Request.jpg", @SCRIPTDIR & "\imageBooster\Request.jpg")
FileInstall("C:\Users\Borkar\Desktop\utilities2.jpg", @SCRIPTDIR & "\imageBooster\utilities2.jpg")
FileInstall("C:\Users\Borkar\Desktop\Upgrade.jpg", @SCRIPTDIR & "\imageBooster\Upgrade.jpg")
FileInstall("C:\Users\Borkar\Desktop\LiveChat.jpg", @SCRIPTDIR & "\imageBooster\LiveChat.jpg")
FileInstall("C:\Users\Borkar\Desktop\Support.jpg", @SCRIPTDIR & "\imageBooster\Support.jpg")
FileInstall("C:\Users\Borkar\Desktop\AboutUs.jpg", @SCRIPTDIR & "\imageBooster\AboutUs.jpg")
FileInstall("C:\Users\Borkar\Desktop\custom.jpg", @SCRIPTDIR & "\imageBooster\custom.jpg")
FileInstall("C:\Users\Borkar\Desktop\utilities.jpg", @SCRIPTDIR & "\imageBooster\utilities.jpg")
FileInstall("C:\Users\Borkar\Desktop\speedbooster.jpg", @SCRIPTDIR & "\imageBooster\speedbooster.jpg")
FileInstall("C:\Users\Borkar\Desktop\scannow2.jpg", @SCRIPTDIR & "\imageBooster\scannow2.jpg")
FileInstall("C:\Users\Borkar\Desktop\home.jpg", @SCRIPTDIR & "\imageBooster\home.jpg")
FileInstall("C:\Users\Borkar\Desktop\scannow.jpg", @SCRIPTDIR & "\imageBooster\scannow.jpg")
FileInstall("C:\Users\Borkar\Desktop\scan.jpg", @SCRIPTDIR & "\imageBooster\scan.jpg")
FileInstall("C:\Users\Borkar\Desktop\get full.jpg", @SCRIPTDIR & "\imageBooster\get full.jpg")
FileInstall("C:\Users\Borkar\Desktop\fix now.jpg", @SCRIPTDIR & "\imageBooster\fix now.jpg")
FileInstall("C:\Users\Borkar\Desktop\reduire.jpg", @SCRIPTDIR & "\imageBooster\reduire.jpg")
FileInstall("C:\Users\Borkar\Desktop\optipic.jpg", @SCRIPTDIR & "\imageBooster\picmain.jpg")
;/////CREATION DE GUI MAIN ///////////////////////////////////////////////////////////////////////////
$Gui1 = GuiCreate("Road Runner Pro", 800, 600, -1, -1, $WS_BORDER + $WS_POPUP)
GuiSetOnEvent($GUI_EVENT_CLOSE, "fermer")

$fermer = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\fermer.jpg", 800 - 22, 0, 20, 22)
$reduire = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\reduire.jpg", 800 - 44, 0, 20, 25)
$GetFull = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\get full.jpg", 800 - 215, 4, 126, 18 )
$fixnow  = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\fix now.jpg", 610, 460, 150, 60)
$scan = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scan.jpg", 570, 105, 215, 30)
$scannow = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scannow.jpg", 348, 316, 110, 18)
$home = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\home.jpg", 12, 148, 93, 30)
$Scaan = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scannow2.jpg", 12, 190, 93, 80)
$speedbooster = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\speedbooster.jpg", 12, 271, 93, 100)
$utilities = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\utilities.jpg", 12, 370, 93, 80)
$custom = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\custom.jpg", 12, 450, 93, 100)
$AboutUs = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\AboutUs.jpg", 420, 570, 70, 35)
$Support = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Support.jpg", 270, 570, 70, 35)
$LiveChat = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat.jpg", 130, 570, 70, 35)
$Upgrade = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Upgrade.jpg", 595, 530, 190, 38)


$pic1 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\picmain.jpg", 0, 0, 800, 600)

GuiCtrlCreateLabel("Home", 51, 155, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlCreateLabel("Scan Now", 22, 240, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Speed" & @CRLF & "Booster", 34, 326, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Utilities", 28, 430, 90, 40)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Custom" & @CRLF & "Service", 34, 512, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)


GuiCtrlCreateLabel("Road Runner", 105, 20, 230, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 28, "", $GUI_FONTITALIC)

GuiCtrlCreateLabel("Pro", 333, 20, 70, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 28, $FW_EXTRABOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("We Optimize Your Pc Better", 110, 67, 260, 20)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreateButton("X", 776, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_NOFOCUS)

GuiCtrlCreateButton("_", 751, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Live Chat", 130, 575, 73)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Support", 273, 575, 68)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("About us", 420, 575, 71)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("+1-866-454-2603", 588, 575, 125)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_YELLOW)
GuiCtrlSetFont(-1, 12, $FW_BOLD)



GuiCtrlCreateLabel("Upgrade to full version now", 595, 536, 180, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateButton(">> Scan now", 340, 312, 130, 26)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("System Overview", 160, 150, 190, 30)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 16, $FW_EXTRABOLD, "", "Tahoma") ;Tahoma ;MV boli

GuiCtrlCreateLabel("Benefits Of Full Version :", 160, 426, 280, 30)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0xFEA700)
GuiCtrlSetFont(-1, 16, $FW_BOLD)

GuiCtrlCreateButton("Get Full Version", 582, 2, 113, 23)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 10, $FW_EXTRABOLD)
GuiCtrlSetBkCOLOR(-1, $COLOR_RED)


GuiCtrlCreateLabel("Scan Status:", 10, 105, 120, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Showing Results:", 272, 105, 154, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Click here to scan now !", 579, 105, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Scan Your PC Now", 345, 220, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("Scan Date:", 345, 250, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_GRAY)
GuiCtrlSetFont(-1, 12, $FW_BOLD)

GuiCtrlCreateLabel("Scan Results:", 345, 275, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_GRAY)
GuiCtrlSetFont(-1, 12, $FW_BOLD)

GuiCtrlCreateLabel("Call", 240, 381, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("1-866-454-2603", 278, 381, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("For Support", 416, 381, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("( Toll Free )", 540, 386, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 10)

$ScanResult1 = GuiCtrlCreateLabel("", 427, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$ScanStatut1 = GuiCtrlCreateLabel("Scan Completed", 118, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$op = FileOpen(@WINDOWSDIR & "\LastResults.ini", 0)
$L1 = FileReadLine($op, 1)
$L2 = FileReadLine($op, 2)

$LastResultDate = GuiCtrlCreateLabel($L1, 432, 251, 150)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_GRAY)
GuiCtrlSetFont(-1, 10, $FW_BOLD, "", "Tahoma")

$LastResultStatut = GuiCtrlCreateLabel($L2 , 454, 277, 150)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_GRAY)
GuiCtrlSetFont(-1, 10, $FW_BOLD, "", "Tahoma")


GuiSetState(@SW_SHOW, $Gui1)

;///////////Gui Custom Service ////////////////////////////////////////////////////////////////////////////////////////////////////////
$Gui2 = GuiCreate("Road Runner Pro", 800, 600, -1, -1, $WS_BORDER + $WS_POPUP)
GuiSetOnEvent($GUI_EVENT_CLOSE, "fermer")

$fermer2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\fermer.jpg", 800 - 22, 0, 20, 22)
$reduire2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\reduire.jpg", 800 - 44, 0, 20, 25)
$GetFull2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\get full.jpg", 800 - 215, 4, 126, 18 )
$scan2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scan.jpg", 570, 105, 215, 30)
$home2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\home.jpg", 12, 148, 93, 30)
$Scaan2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scannow2.jpg", 12, 190, 93, 80)
$speedbooster2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\speedbooster.jpg", 12, 271, 93, 100)
$utilities2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\utilities.jpg", 12, 370, 93, 80)
$custom2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\custom.jpg", 12, 450, 93, 100)
$AboutUs2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\AboutUs.jpg", 420, 570, 70, 35)
$Support2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Support.jpg", 270, 570, 70, 35)
$LiveChat22 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat.jpg", 130, 570, 70, 35)
$Request2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Request.jpg", 320, 230, 300, 50)
$LiveChat2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat2.jpg", 328, 298, 295, 45)
$Upgrade2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Upgrade.jpg", 595, 530, 190, 38)

$pic2 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\customservice.jpg", 0, 0, 800, 600)

GuiCtrlCreateLabel("Home", 51, 155, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlCreateLabel("Scan Now", 22, 240, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Speed" & @CRLF & "Booster", 34, 326, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Utilities", 28, 430, 90, 40)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Custom" & @CRLF & "Service", 34, 512, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Road Runner", 105, 20, 230, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 28, "", $GUI_FONTITALIC)

GuiCtrlCreateLabel("Pro", 333, 20, 70, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 28, $FW_EXTRABOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("We Optimize Your Pc Better", 110, 67, 260, 20)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreateLabel("Our expert technicians are avalaible 24/7. If you need any assistance regarding Road Runner pro, feel free to call our toll free at 1-866-454-2603. We'll be happy to assist you.", 224, 394, 550, 75)
GuiCtrlSetBkColor(-1, 0xD3E9FF)
GuiCtrlSetColor(-1, $COLOR_GREEN)
GuiCtrlSetFont(-1, 14, $FW_BOLD)


GuiCtrlCreateLabel("Call", 240, 493, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("1-866-454-2603", 278, 493, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("For Support", 416, 493, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("( Toll Free )", 540, 497, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 10)

GuiCtrlCreateLabel("Scan Status:", 10, 105, 120, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Showing Results:", 272, 105, 154, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Click here to scan now !", 579, 105, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateButton("X", 776, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_NOFOCUS)

GuiCtrlCreateButton("_", 751, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Live Chat", 130, 575, 73)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Support", 273, 575, 68)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("About us", 420, 575, 71)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("+1-866-454-2603", 588, 575, 125)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_YELLOW)
GuiCtrlSetFont(-1, 12, $FW_BOLD)

GuiCtrlCreateButton("Get Full Version", 582, 2, 113, 23)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 10, $FW_BOLD)
GuiCtrlSetBkCOLOR(-1, $COLOR_RED)

GuiCtrlCreateButton("Upgrade to full version now", 592, 540, 180, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Customer Service", 250, 150, 250, 25)
GuiCtrlSetBkColor(-1, 0xD2E8FE)
GuiCtrlSetFont(-1, 20, $FW_EXTRABOLD)


GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat2.jpg", 328, 298, 295, 45)

$ScanResult2 = GuiCtrlCreateLabel("", 427, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$ScanStatut2 = GuiCtrlCreateLabel("", 118, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

GuiSetState(@SW_HIDE, $Gui2)


;///////CREATION DE GUI ( UTILITIES ) /////////////////////////////////////////////////////////////////////////////////////////////////////////
$Gui3 = GuiCreate("Road Runner Pro", 800, 600, -1, -1, $WS_BORDER + $WS_POPUP)
GuiSetOnEvent($GUI_EVENT_CLOSE, "fermer")

$fermer3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\fermer.jpg", 800 - 22, 0, 20, 22)
$reduire3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\reduire.jpg", 800 - 44, 0, 20, 25)
$GetFull3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\get full.jpg", 800 - 215, 4, 126, 18 )
$scan3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scan.jpg", 570, 105, 215, 30)
$home3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\home.jpg", 12, 148, 93, 30)
$Scaan3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scannow2.jpg", 12, 190, 93, 80)
$speedbooster3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\speedbooster.jpg", 12, 271, 93, 100)
$utilities3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\utilities.jpg", 12, 370, 93, 80)
$custom3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\custom.jpg", 12, 450, 93, 100)
$AboutUs3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\AboutUs.jpg", 420, 570, 70, 35)
$Support3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Support.jpg", 270, 570, 70, 35)
$LiveChat3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat.jpg", 130, 570, 70, 35)
$Upgrade3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Upgrade.jpg", 595, 530, 190, 38)
$program3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\program.jpg", 180, 220, 290, 70)
$control3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\control.jpg", 160, 298, 250, 70)
$defrag3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Defrag.jpg", 160, 408, 265, 65)
$restore3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\restore.jpg", 490, 218, 253, 70)
$WinUpdate = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\WinUpdate.jpg", 490, 310, 275, 70)
$Network3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Network.jpg", 490, 400, 275, 70)

$pic3 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\utilities2.jpg", 0, 0, 800, 600)

GuiCtrlCreateLabel("Home", 51, 155, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlCreateLabel("Scan Now", 22, 240, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Speed" & @CRLF & "Booster", 34, 326, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Utilities", 28, 430, 90, 40)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Custom" & @CRLF & "Service", 34, 512, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Road Runner", 105, 20, 230, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 28, "", $GUI_FONTITALIC)

GuiCtrlCreateLabel("Pro", 333, 20, 70, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 28, $FW_EXTRABOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("We Optimize Your Pc Better", 110, 67, 260, 20)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreateLabel("Call", 240, 493, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("1-866-454-2603", 278, 493, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("For Support", 416, 493, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("( Toll Free )", 540, 497, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 10)

GuiCtrlCreateLabel("Scan Status:", 10, 105, 120, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Showing Results:", 272, 105, 154, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Click here to scan now !", 579, 105, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateButton("X", 776, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_NOFOCUS)

GuiCtrlCreateButton("_", 751, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Live Chat", 130, 575, 73)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Support", 273, 575, 68)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("About us", 420, 575, 71)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("+1-866-454-2603", 588, 575, 125)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_YELLOW)
GuiCtrlSetFont(-1, 12, $FW_BOLD)

GuiCtrlCreateLabel("All the important functions you want to use in your PC", 250, 154, 470)
GuiCtrlSetBkColor(-1, 0xD2E8FE)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateButton("Get Full Version", 582, 2, 113, 23)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 10, $FW_BOLD)
GuiCtrlSetBkCOLOR(-1, $COLOR_RED)

GuiCtrlCreateButton("Upgrade to full version now", 592, 540, 180, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Program uninstaller", 248, 238, 220, 50)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_GREEN)
GuiCtrlSetFont(-1, 14, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Control Panel", 248, 331, 220, 50)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 14, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Disk Defragment", 248, 424, 220, 50)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Networking", 581, 424, 220, 50)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0x529DF3)
GuiCtrlSetFont(-1, 14, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Windows Updates", 581, 331, 220, 50)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 14, $FW_EXTRABOLD)

GuiCtrlCreateLabel("System Restore", 581, 238, 220, 50)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, 0xD1AB56)
GuiCtrlSetFont(-1, 14, $FW_EXTRABOLD)

$ScanResult3 = GuiCtrlCreateLabel("", 427, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$ScanStatut3 = GuiCtrlCreateLabel("", 118, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")


GuiSetState(@SW_HIDE, $Gui3)


;//////////////////CREATION DE SPEEDBOOSTER !///////////////////////////////////////////////////:
$Gui4 = GuiCreate("Road Runner Pro", 800, 600, -1, -1, $WS_BORDER + $WS_POPUP)
GuiSetOnEvent($GUI_EVENT_CLOSE, "fermer")
$fermer4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\fermer.jpg", 800 - 22, 0, 20, 22)
$reduire4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\reduire.jpg", 800 - 44, 0, 20, 25)
$GetFull4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\get full.jpg", 800 - 215, 4, 126, 18 )
$home4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\home.jpg", 12, 148, 93, 30)
$Scaan4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scannow2.jpg", 12, 190, 93, 80)
$speedbooster4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\speedbooster.jpg", 12, 271, 93, 100)
$utilities4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\utilities.jpg", 12, 370, 93, 80)
$custom4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\custom.jpg", 12, 450, 93, 100)
$scan4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scan.jpg", 570, 105, 215, 30)
$Save = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scan.jpg", 642, 460, 145, 40)
$up4 = GuiCtrlCreatepic(@SCRIPTDIR & "\imageBooster\scan.jpg", 345, 470, 180, 20)
$AboutUs4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\AboutUs.jpg", 420, 570, 70, 35)
$Support4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Support.jpg", 270, 570, 70, 35)
$LiveChat4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat.jpg", 130, 570, 70, 35)

$Start = GuiCtrlCreateButton("Start", 180, 460, 128, 35)
GuiCtrlSetBkColor(-1, 0xE10701)
GuiCtrlSetColor(-1, 0xFBD2D2)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

$idListview = GUICtrlCreateListView("File name                       |File location                   |Key                                  ", 160, 213, 620, 240 ,"", $LVS_EX_CHECKBOXES)


$pic4 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\speedb.jpg", 0, 0, 800, 600)

GuiCtrlCreateLabel("Home", 51, 155, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlCreateLabel("Scan Now", 22, 240, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Speed" & @CRLF & "Booster", 34, 326, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Utilities", 28, 430, 90, 40)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Custom" & @CRLF & "Service", 34, 512, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Road Runner", 105, 20, 230, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 28, "", $GUI_FONTITALIC)

GuiCtrlCreateLabel("Pro", 333, 20, 70, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 28, $FW_EXTRABOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("We Optimize Your Pc Better", 110, 67, 260, 20)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreateLabel("Scan Status:", 10, 105, 120, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Showing Results:", 272, 105, 154, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Click here to scan now !", 579, 105, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Call", 240, 520, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("1-866-454-2603", 278, 520, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("For Support", 416, 520, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("( Toll Free )", 540, 530, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 10)

GuiCtrlCreateLabel("Speed Booster", 230, 145, 150, 30)
GuiCtrlSetBkColor(-1, 0xD2E8FE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 15, $FW_BOLD)

GuiCtrlCreateLabel("1) Check the program you wish to remove from windows startup" & @CRLF & "2) click Save changes", 230, 170, 600, 40)
GuiCtrlSetBkColor(-1, 0xD2E8FE)
GuiCtrlSetColor(-1, $COLOR_GRAY)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlCreateButton("Upgrade to full version now", 380, 470, 180, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Save", 700, 470, 50, 20)
GuiCtrlSetBkColor(-1, 0xE10701)
GuiCtrlSetColor(-1, 0xFBD2D2)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateButton("Start", 180, 460, 128, 35)
GuiCtrlSetBkColor(-1, 0xE10701)
GuiCtrlSetColor(-1, 0xFBD2D2)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateButton("Get Full Version", 582, 2, 113, 23)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 10, $FW_BOLD)
GuiCtrlSetBkCOLOR(-1, $COLOR_RED)
GuiCtrlCreateButton("X", 776, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_NOFOCUS)

GuiCtrlCreateButton("_", 751, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Live Chat", 130, 575, 73)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Support", 273, 575, 68)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("About us", 420, 575, 71)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("+1-866-454-2603", 580, 575, 125)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_YELLOW)
GuiCtrlSetFont(-1, 12, $FW_BOLD)



GUICtrlCreateListView("File name                       |File location                   |Key                                  ", 160, 213, 620, 240 ,"", $LVS_EX_CHECKBOXES)

$ScanResult4 = GuiCtrlCreateLabel("", 427, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$ScanStatut4 = GuiCtrlCreateLabel("", 118, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

GuiSetState(@SW_HIDE, $Gui4 )

;/////////////////CREATION DE GUI SCAN NOW ! //////////////////////////////////////////////////////////////
$Gui5 = GuiCreate("Road Runner Pro", 800, 600, -1, -1, $WS_BORDER + $WS_POPUP)
GuiSetOnEvent($GUI_EVENT_CLOSE, "fermer")
$fermer5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\fermer.jpg", 800 - 22, 0, 20, 22)
$reduire5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\reduire.jpg", 800 - 44, 0, 20, 25)
$GetFull5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\get full.jpg", 800 - 215, 4, 126, 18 )
$home5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\home.jpg", 12, 148, 93, 30)
$Scaan5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\scannow2.jpg", 12, 190, 93, 80)
$speedbooster5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\speedbooster.jpg", 12, 271, 93, 100)
$StopScan = GuiCtrlCreateButton("Start Scan", 680, 464, 104, 40)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "", "Tahoma")
$utilities5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\utilities.jpg", 12, 370, 93, 80)
$custom5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\custom.jpg", 12, 450, 93, 100)
$upgrade5 = GuiCtrlCreateButton("Upgrade to full version now", 369, 470, 180, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)
$AboutUs5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\AboutUs.jpg", 420, 570, 70, 35)
$Support5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\Support.jpg", 270, 570, 70, 35)
$LiveChat5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\LiveChat.jpg", 130, 570, 70, 35)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

$RepairDisk11 = GuiCtrlCreateButton(">> Repair", 710, 388, 80, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")
GuiCtrlSetState(-1, $GUI_HIDE)

$RepairDisk22 = GuiCtrlCreateButton(">> Repair", 710, 306, 80, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")
GuiCtrlSetState(-1, $GUI_HIDE)

$RepairDisk33 = GuiCtrlCreateButton(">> Repair All", 710, 222, 80, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")
GuiCtrlSetState(-1, $GUI_HIDE)



$pic5 = GuiCtrlCreatePic(@SCRIPTDIR & "\imageBooster\SysScan.jpg", 0, 0, 800, 600)





$disk4 = GuiCtrlCreateLabel("Invalid Entries", 245, 299, 340, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 12, "", "", "Tahoma")

$disk5 = GuiCtrlCreateLabel("Optimize your PC to Speed Up PC Performance ", 245, 322, 340, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")

$disk6 = GuiCtrlCreateLabel("Scanning for entries, errors, extensions & references ", 245, 342, 340, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 8, "", "", "Tahoma")

$disk1 = GuiCtrlCreateLabel("Clean Disk Space", 245, 376, 340, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 12, "", "", "Tahoma")

$disk2 = GuiCtrlCreateLabel("Recover Disk Space ", 245, 399, 340, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")

$disk3 = GuiCtrlCreateLabel("Remove logs, junk files, broken shortcut, temporary files & more", 245, 420, 340, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 8, "", "", "Tahoma")

$countdisk2 = GuiCtrlCreateLabel("", 680, 318, 200, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, "", "", "Tahoma")

$countdisk = GuiCtrlCreateLabel("", 680, 399, 200, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 12, "", "", "Tahoma")

$RepairDisk1 = GuiCtrlCreateButton(">> Repair", 710, 388, 80, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")
GuiCtrlSetState(-1, $GUI_HIDE)

$RepairDisk2 = GuiCtrlCreateButton(">> Repair", 710, 306, 80, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")
GuiCtrlSetState(-1, $GUI_HIDE)

$RepairDisk3 = GuiCtrlCreateButton(">> Repair All", 710, 222, 80, 40)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 10, "", "", "Tahoma")
GuiCtrlSetState(-1, $GUI_HIDE)



GuiCtrlCreateButton("Start Scan", 680, 464, 104, 40)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "", "Tahoma")



$InProgress = GuiCtrlCreateLabel("Recover Space && Speed Up Your PC ", 245, 155, 390, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 17, "", "", "tahoma")


GuiCtrlCreateLabel("Home", 51, 155, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD)

GuiCtrlCreateLabel("Scan Now", 22, 240, 90, 30)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Speed" & @CRLF & "Booster", 34, 326, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Utilities", 28, 430, 90, 40)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Custom" & @CRLF & "Service", 34, 512, 90, 45)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER, "MV boli" )
GuiCtrlSetColor(-1, $COLOR_BLUE)

GuiCtrlCreateLabel("Call", 240, 525, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("1-866-454-2603", 278, 525, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("For Support", 416, 525, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD)

GuiCtrlCreateLabel("( Toll Free )", 540, 535, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 10)

GuiCtrlCreateButton("Upgrade to full version now", 369, 470, 180, 20)
GuiCtrlSetBkColor(-1, $COLOR_WHITE)
GuiCtrlSetColor(-1, $COLOR_BLUE)
GuiCtrlSetFont(-1, 10, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateButton("Get Full Version", 582, 2, 113, 23)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 10, $FW_BOLD)
GuiCtrlSetBkCOLOR(-1, $COLOR_RED)
GuiCtrlCreateButton("X", 776, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)
GuiCtrlSetState(-1, $GUI_NOFOCUS)

GuiCtrlCreateButton("_", 751, 0, 22, 23)
GuiCtrlSetBkColor(-1, $COLOR_BLACK)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD)

GuiCtrlCreateLabel("Live Chat", 130, 575, 73)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("Support", 273, 575, 68)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("About us", 420, 575, 71)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTUNDER)

GuiCtrlCreateLabel("+1-866-454-2603", 589, 575, 125)
GuiCtrlSetBkColor(-1, 0x1375D9)
GuiCtrlSetColor(-1, $COLOR_YELLOW)
GuiCtrlSetFont(-1, 12, $FW_BOLD)

GuiCtrlCreateLabel("Road Runner", 105, 20, 230, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_BLACK)
GuiCtrlSetFont(-1, 28, "", $GUI_FONTITALIC)

GuiCtrlCreateLabel("Pro", 333, 20, 70, 40)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 28, $FW_EXTRABOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("We Optimize Your Pc Better", 110, 67, 260, 20)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT )
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_EXTRABOLD, "", "MV boli")

GuiCtrlCreateLabel("Scan Status:", 10, 105, 120, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Showing Results:", 272, 105, 154, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

GuiCtrlCreateLabel("Click here to scan now !", 579, 105, 200, 20)
GuiCtrlSetBkColor(-1, $COLOR_RED)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTUNDER)

$ScanResult = GuiCtrlCreateLabel("", 427, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$ScanStatut = GuiCtrlCreateLabel("", 118, 107, 200, 20)
GuiCtrlSetBkColor(-1, $Gui_BKCOLOR_TRANSPARENT)
GuiCtrlSetColor(-1, $COLOR_WHITE)
GuiCtrlSetFont(-1, 12, $FW_BOLD, $GUI_FONTITALIC, "Tahoma")

$Progress = GuiCtrlCreateProgress(250, 257, 280, 20, $PBS_MARQUEE)
GuiCtrlSetState(-1, $GUI_HIDE)

$Progress2 = GuiCtrlCreateProgress(250, 257, 280, 20)
GuiCtrlSetState(-1, $GUI_HIDE)

$LabelProgress1 = GuiCtrlCreateLabel("", 250, 213, 250, 30)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 14, $FW_BOLD, $GUI_FONTITALIC)

$LabelProgress2 = GuiCtrlCreateLabel("", 250, 240, 420, 16)
GuiCtrlSetBkColor(-1, $GUI_BKCOLOR_TRANSPARENT)
GuiCtrlSetFont(-1, 7)

Global $hGIF = _GUICtrlCreateGIF(@SCRIPTDIR & "\imageBooster\ihj.gif", "", 170, 210)
GUICtrlSetTip($hGIF, "Image")
GUIRegisterMsg(133, "_Refresh") ; WM_NCPAINT
GUIRegisterMsg(15, "_ValidateGIFs") ; WM_PAINT
Global $iPlay = 1
_GIF_PauseAnimation($hGIF)



GuiSetState(@SW_HIDE, $Gui5)

GuiCtrlSetOnEvent($RepairDisk33, "RepairDisk3")
GuiCtrlSetOnEvent($RepairDisk22, "RepairDisk2")
GuiCtrlSetOnEvent($RepairDisk11, "RepairDisk1")
GuiCtrlSetOnEvent($StopScan, "StopScan")
GuiCtrlSetOnEvent($Support5, "Support")
GuiCtrlSetOnEvent($AboutUs5, "AboutUs")
GuiCtrlSetOnEvent($LiveChat5, "LiveChat")
GuiCtrlSetOnEvent($upgrade5, "Upgrade")
GuiCtrlSetOnEvent($reduire5, "reduire5")
GuiCtrlSetOnEvent($fermer5, "fermer")
GuiCtrlSetOnEvent($GetFull5, "GetFull")
GuiCtrlSetOnEvent($home5, "Home")
GuiCtrlSetOnEvent($Scaan5, "Scaan")
GuiCtrlSetOnEvent($speedbooster5, "SpeedBooster")
GuiCtrlSetOnEvent($utilities5, "Utilities")
GuiCtrlSetOnEvent($custom5, "custom")

GuiCtrlSetOnEvent($Support4, "Support")
GuiCtrlSetOnEvent($AboutUs4, "AboutUs")
GuiCtrlSetOnEvent($LiveChat, "LiveChat")
GuiCtrlSetOnEvent($Start, "Start")
GuiCtrlSetOnEvent($up4, "up4")
GuiCtrlSetOnEvent($Save, "Save")
GuiCtrlSetOnEvent($scan4, "Scan")
GuiCtrlSetOnEvent($GetFull4, "GetFull")
GuiCtrlSetOnEvent($home4, "home")
GuiCtrlSetOnEvent($Scaan4, "Scaan")
GuiCtrlSetOnEvent($speedbooster4, "speedbooster")
GuiCtrlSetOnEvent($utilities4, "utilities")
GuiCtrlSetOnEvent($custom4, "custom")
GuiCtrlSetOnEvent($fermer4, "fermer")
GuiCtrlSetOnEvent($reduire4, "reduire4")


GuiCtrlSetOnEvent($WinUpdate, "WinUpdate")
GuiCtrlSetOnEvent($Network3, "Network3")
GuiCtrlSetOnEvent($restore3, "restore3")
GuiCtrlSetOnEvent($defrag3, "defrag3")
GuiCtrlSetOnEvent($control3, "control3")
GuiCtrlSetOnEvent($program3, "program3")
GuiCtrlSetOnEvent($Upgrade3, "Upgrade")
GuiCtrlSetOnEvent($GetFull3, "GetFull")
GuiCtrlSetOnEvent($LiveChat3, "LiveChat")
GuiCtrlSetOnEvent($Scan3, "Scan")
GuiCtrlSetOnEvent($speedbooster3, "SpeedBooster")
GuiCtrlSetOnEvent($home3, "Home")
GuiCtrlSetOnEvent($Scaan3, "Scaan")
GuiCtrlSetOnEvent($utilities3, "utilities")
GuiCtrlSetOnEvent($custom3, "custom")
GuiCtrlSetOnEvent($AboutUs3, "AboutUs")
GuiCtrlSetOnEvent($Support3, "Support")
GuiCtrlSetOnEvent($reduire3, "reduire3")
GuiCtrlSetOnEvent($fermer3, "fermer2")

GuiCtrlSetOnEvent($LiveChat22, "LiveChat")
GuiCtrlSetOnEvent($Upgrade2, "Upgrade")
GuiCtrlSetOnEvent($GetFull2, "GetFull")
GuiCtrlSetOnEvent($Scan2, "Scan")
GuiCtrlSetOnEvent($speedbooster2, "SpeedBooster")
GuiCtrlSetOnEvent($home2, "Home")
GuiCtrlSetOnEvent($Scaan2, "Scaan")
GuiCtrlSetOnEvent($utilities2, "utilities")
GuiCtrlSetOnEvent($custom2, "custom")
GuiCtrlSetOnEvent($AboutUs2, "AboutUs")
GuiCtrlSetOnEvent($Support2, "Support")
GuiCtrlSetOnEvent($reduire2, "reduire2")
GuiCtrlSetOnEvent($fermer2, "fermer2")
GuiCtrlSetOnEvent($LiveChat2, "LiveChat")
GuiCtrlSetOnEvent($Request2, "Request")

GuiCtrlSetOnEvent($Upgrade, "Upgrade")
GuiCtrlSetOnEvent($LiveChat, "LiveChat")
GuiCtrlSetOnEvent($Support, "Support")
GuiCtrlSetOnEvent($AboutUs, "AboutUs")
GuiCtrlSetOnEvent($fermer, "fermer")
GuiCtrlSetOnEvent($reduire, "reduire")
GuiCtrlSetOnEvent($GetFull, "GetFull")
GuiCtrlSetOnEvent($fixnow, "FixNoW")
GuiCtrlSetOnEvent($scan, "Scan")
GuiCtrlSetOnEvent($scannow, "ScanNow")
GuiCtrlSetOnEvent($home, "Home")
GuiCtrlSetOnEvent($Scaan, "Scaan")
GuiCtrlSetOnEvent($speedbooster, "SpeedBooster")
GuiCtrlSetOnEvent($utilities, "utilities")
GuiCtrlSetOnEvent($custom, "Custom")


While 1
   sleep(200)
WEnd

Func _Rc()
   Sleep(200)
EndFunc


Func Home()
	$Start_ = False
	GuiSetState(@SW_SHOW, $Gui1)
   GuiSetState(@SW_HIDE, $Gui2)
   GuiSetState(@SW_HIDE, $Gui5)
   GuiSetState(@SW_HIDE, $Gui3)
   GuiSetState(@SW_HIDE, $Gui4)
EndFunc

Func restore3()
   $op = FileOpen(@APPDATADIR & "\sik.cmd", 2)
   FileWrite($op, "rstrui.exe")
   FileClose($op)
   Run(@APPDATADIR & "\sik.cmd", "", @SW_HIDE)
EndFunc

Func WinUpdate()
   $op = FileOpen(@APPDATADIR & "\sik.cmd", 2)
   FileWrite($op, "%windir%\system32\wuapp.exe startmenu")
   FileClose($op)
   Run(@APPDATADIR & "\sik.cmd", "", @SW_HIDE)
   sleep(1000)
   ControlSend("Windows Update", "", "Button3", "{ENTER}")
EndFunc


Func SpeedBooster()
	$Start_ = False
	GuiSetState(@SW_SHOW, $Gui4)
	GuiSetState(@SW_HIDE, $Gui5)
	GuiSetState(@SW_HIDE, $Gui1)
	GuiSetState(@SW_HIDE, $Gui2)
	GuiSetState(@SW_HIDE, $Gui3)

EndFunc

Func Network3()
   shellexecute("www.google.com")
EndFunc

Func defrag3()
   Run(@SystemDir & '\Defrag.exe ' & $Drive & ' -f')
EndFunc

Func control3()
   $op = FileOpen(@APPDATADIR & "\sik.cmd", 2)
   FileWrite($op, "start control")
   FileClose($op)
   Run(@APPDATADIR & "\sik.cmd", "", @SW_HIDE)
EndFunc

Func program3()
   $op = FileOpen(@APPDATADIR & "\sik.cmd", 2)
   FileWrite($op, "control appwiz.cpl")
   FileClose($op)
   Run(@APPDATADIR & "\sik.cmd", "", @SW_HIDE)
EndFunc

Func custom()
	$Start_ = False
	GuiSetState(@SW_SHOW, $Gui2)
   GuiSetState(@SW_HIDE, $Gui5)
   GuiSetState(@SW_HIDE, $Gui1)
   GuiSetState(@SW_HIDE, $Gui3)
   GuiSetState(@SW_HIDE, $Gui4)
EndFunc


Func fermer()
   Exit
EndFunc

Func Request()
   ShellExecute("www.roadrunneroptimizer.com/contact.html")
EndFunc

Func Scan()
   ShellExecute("www.roadrunneroptimizer.com/fix-now.html")
EndFunc

Func ScanNow()
   ShellExecute("www.roadrunneroptimizer.com/fix-now.html")
EndFunc

Func LiveChat()
   ShellExecute("www.roadrunneroptimizer.com")
EndFunc

Func Support()
   ShellExecute("www.roadrunneroptimizer.com/contact.html")
EndFunc

Func AboutUs()
   ShellExecute("www.roadrunneroptimizer.com/about-us.html")
EndFunc

Func FixNow()
   ShellExecute("www.roadrunneroptimizer.com/fix-now.html")
EndFunc

Func Upgrade()
   ShellExecute("www.roadrunneroptimizer.com/fix-now.html")
EndFunc


Func Scaan()
	$Start_ = False
	GuiSetState(@SW_SHOW, $Gui5)
   GuiSetState(@SW_HIDE, $Gui1)
   GuiSetState(@SW_HIDE, $Gui2)
   GuiSetState(@SW_HIDE, $Gui3)
   GuiSetState(@SW_HIDE, $Gui4)
EndFunc

func reduire()
   GuiSetstate(@SW_MINIMIZE, $Gui1)
EndFunc

Func fermer2()
   Exit
EndFunc

Func GetFull()
   ShellExecute("www.roadrunneroptimizer.com/fix-now.html")
EndFunc

Func reduire2()
   GuiSetState(@SW_MINIMIZE, $Gui2)
EndFunc

Func reduire3()
   GuiSetState(@SW_MINIMIZE, $Gui3)
EndFunc

Func utilities()
	$Start_ = False
   GuiSetState(@SW_SHOW, $Gui3)
   GuiSetState(@SW_HIDE, $Gui5)
   GuiSetState(@SW_HIDE, $Gui1)
   GuiSetState(@SW_HIDE, $Gui2)
   GuiSetState(@SW_HIDE, $Gui4)

EndFunc


Func reduire4()
	GuiSetState(@SW_MINIMIZE, $Gui4)
EndFunc

Func Save()
	 For $x = 1 To 100
    If _GUICtrlListView_GetItemChecked($idListview, $x - 1) Then
	$splitView = StringSplit(_GUICtrlListView_GetItemTextString($idlistview, $x - 1), "|")
	_GuiCtrlListView_DeleteItem($idListview, $x - 1)
    RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $splitView[1])
	RegDelete("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $splitView[1])
	FileDelete(@STARTUPCOMMONDIR & "\" & $splitView[1])
	FileDelete(@STARTUPDIR & "\" & $splitView[1])
	_GuiCtrlListView_DeleteItem($idListview, $x - 1)
    EndIf
   Next
EndFunc

Func up4()
	ShellExecute("www.roadrunneroptimizer.com/fix-now.html")
endfunc

Func Start()
	If $Start_ = False then
	For $i = 1 To 100
	  $sSubKey = RegEnumVal("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $i)
   If $sSubKey = "" then ExitLoop
	  $Key = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $sSubKey)
	  Dim $item[$i] = [$i - 1]
	  $item[$i - 1] = GuiCtrlCreateListViewItem($sSubKey & "|" & $Key & "|HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $idListview)
	Next
	For $p = 101 To 200
		$sSubKey2 = RegEnumVal("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $p)
	 If $sSubKey2 = "" then ExitLoop
	 $Key2 = RegRead("HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $sSubKey2)
	  Dim $item[$p] = [$p - 1]
	  $item[$p - 1] = GuiCtrlCreateListViewItem($sSubKey2 & "|" & $Key2& "|HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", $idListview)
	Next
	$FileStartup1 = FileFindFirstFile(@STARTUPDIR & "\*.*")
    For $a = 201 To 300
	$NextStartup1 = FileFindNextFile($FileStartup1, 1)
	If $NextStartup1 = "" then ExitLoop
	Dim $item[$a] = [$a - 1]
	$item[$a - 1] = GuiCtrlCreateListViewItem($NextStartup1 & "|" & @STARTUPDIR & "|" & @STARTUPDIR, $idListview )
	Next
	$FileStartup2 = FileFindFirstFile(@STARTUPCOMMONDIR & "\*.*")
	For $b = 301 To 400
	$NextStartup2 = FileFindNextFile($FileStartup2, 1)
	If $NextStartup2 = "" Then ExitLoop
	Dim $item[$b] = [$b - 1]
	$item[$b - 1] = GuiCtrlCreateListViewItem($NextStartup2 & "|" & @STARTUPCOMMONDIR & "|" & @STARTUPCOMMONDIR, $idListview )
	Next
	$Start_ = True
	Else
	GuiCtrlSetData($Start, "Clear")
	_GuiCtrlListView_DeleteAllItems($idListview)
	$Start_ = False
Endif
EndFunc


Func reduire5()
 GuiSetState(@SW_MINIMIZE, $Gui5)
EndFunc

Func StopScan()
$Junko1 = FileFindFirstFile(@TEMPDIR & "\*.*")
If $StartScan = False then
	msgbox(64, "Scan launched","This operation may last few minutes" & @CRLF & "Thanks for your patience", 3)
	_GIF_ResumeAnimation($hGIF)

GuiCtrlSetData($LabelProgress1, "Searching for entries errors :")

GuiCtrlSetState($Progress, $GUI_SHOW)
GuiCtrlSetState($Progress2, $GUI_HIDE)

GuiCtrlSetData($ScanResult, "")
GuiCtrlSetData($ScanResult1, "")
GuiCtrlSetData($ScanResult2, "")
GuiCtrlSetData($ScanResult3, "")
GuiCtrlSetData($ScanResult4, "")
    GuiCtrlSetData($ScanStatut, "Scaning ..")
	GuiCtrlSetData($ScanStatut1, "Scaning ..")
	GuiCtrlSetData($ScanStatut2, "Scaning ..")
	GuiCtrlSetData($ScanStatut3, "Scaning ..")
	GuiCtrlSetData($ScanStatut4, "Scaning ..")
	GuiCtrlSetData($InProgress, "Scan in progress, please wait ...")
	GuiCtrlSetData($StopScan, "Stop Scan")
	GuiCtrlSetColor($disk4, $COLOR_RED)
	GuiCtrlSetColor($disk5, $COLOR_RED)
	GuiCtrlSetColor($disk6, $COLOR_RED)
	GuiCtrlSetColor($countdisk2, $COLOR_RED)

For $a = 2 to 600
	GuiCtrlSetData($Progress, $a)
$sSubKey = RegEnumKey("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall", $a)
If $sSubKey = "" then ExitLoop
For $b = 1 to 300
$reg = RegEnumVal("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $sSubKey, $b)

If $reg = "" or $reg = "UninstallString" Then exitloop
Next
If $reg = "UninstallString" Then
	sleep(20)
Else
   GuiCtrlSetData($LabelProgress2, "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $sSubKey)
	GuiCtrlSetData($countdisk2, $a)
EndIF
Next
GuiCtrlSetColor($disk4, $COLOR_BLACK)
GuiCtrlSetColor($disk5, $COLOR_BLACK)
GuiCtrlSetColor($disk6, $COLOR_BLACK)
GuiCtrlSetState($repairDisk22, $GUI_SHOW)
GuiCtrlSetState($repairDisk2, $GUI_SHOW)


	GuiCtrlSetColor($countdisk, $COLOR_RED)
	GuiCtrlSetColor($disk1, $COLOR_RED)
	GuiCtrlSetColor($disk2, $COLOR_RED)
	GuiCtrlSetColor($disk3, $COLOR_RED)

GuiCtrlSetData($LabelProgress1, "Recovering disk space :")
$Junko1 = FileFindFirstFile(@TEMPDIR & "\*.*")
	For $i = 1 TO 600
	GuiCtrlSetData($Progress, $i)
	GuiCtrlSetData($countdisk, $i)
		sleep(50)
$NextJunko1 = FileFindNextFile($Junko1)

GuiCtrlSetData($LabelProgress2, @TEMPDIR & "\" & $NextJunko1)

If $NextJunko1 = "" then ExitLoop
Next
$Junko2 = FileFindFirstFile(@WINDOWSDIR & "\Temp\*.*")
For $p = $i TO 1400
	GuiCtrlSetData($Progress, $p)
	GuiCtrlSetData($countdisk, $p)
	sleep(50)
$NextJunko2 = FileFindNextFile($Junko2)

GuiCtrlSetData($LabelProgress2, @WINDOWSDIR & "\Temp\" & $NextJunko2)

If $NextJunko2 = "" then ExitLoop
Next
$Junko3 = FileFindFirstFile(@WINDOWSDIR & "\Prefetch\*.*")
For $t = $p to 3000
	GuiCtrlSetData($Progress, $t)
	GuiCtrlSetData($countdisk, $t)
	sleep(50)
	$NextJunko3 = FileFindNextFile($Junko3)

GuiCtrlSetData($LabelProgress2, @WINDOWSDIR & "\Prefetch\" & $NextJunko3)

If $NextJunko3 = "" then ExitLoop
Next
GuiCtrlSetData($StopScan, "Start Scan")
GuiCtrlSetState($RepairDisk1, $GUI_SHOW)
GuiCtrlSetState($RepairDisk11, $GUI_SHOW)
	$StartScan = True
GuiCtrlSetData($InProgress, "Scan completed successfully")
GuiCtrlSetState($RepairDisk1, $GUI_SHOW)
GuiCtrlSetState($RepairDisk11, $GUI_SHOW)
GuiCtrlSetState($RepairDisk33, $GUI_SHOW)
GuiCtrlSetState($RepairDisk3, $GUI_SHOW)
$Z = $p + $a
	GuiCtrlSetData($ScanResult, $z)
	GuiCtrlSetData($ScanResult1, $z)
	GuiCtrlSetData($ScanResult2, $z)
	GuiCtrlSetData($ScanResult3, $z)
	GuiCtrlSetData($ScanResult4, $z)
	GuiCtrlSetData($ScanStatut, "Scan completed")
	GuiCtrlSetData($ScanStatut1, "Scan completed")
	GuiCtrlSetData($ScanStatut2, "Scan completed")
	GuiCtrlSetData($ScanStatut3, "Scan completed")
	GuiCtrlSetData($ScanStatut4, "Scan completed")
	GuiCtrlSetData($LabelProgress2, "")
	GuiCtrlSetData($LabelProgress1, "Completed")
	GuiCtrlSetState($Progress, $GUI_HIDE)
	GuiCtrlSetState($Progress2, $GUI_SHOW)
	_GIF_PauseAnimation($hGIF)
	For $o = 1 to 100
		GuiCtrlSetData($Progress2, 100)
		sleep(20)
	Next

	_FileCreate(@WINDOWSDIR & "\LastResults.ini")
	$op = FileOpen(@WINDOWSDIR & "\LastResults.ini", 2)
	FileWrite($op, _DateTimeFormat(_NowCalc(), 2) & "  " & @HOUR & ":" & @MIN & ":" & @SEC & @CRLF & $Z & " Items found")
	FileClose($op)
	GuiCtrlSetData($LastResultDate,  _DateTimeFormat(_NowCalc(), 2) & "  " & @HOUR & ":" & @MIN & ":" & @SEC)
	GuiCtrlSetData($LastResultStatut, $Z & " Items found")

Else
	GuiCtrlSetData($StopScan, "Start Scan")
	$StartScan = False
EndIF
Endfunc

Func RepairDisk1()
	GuiCtrlSetData($ScanStatut, "Repairing ..")
	GuiCtrlSetData($ScanStatut1, "Repairing ..")
	GuiCtrlSetData($ScanStatut2, "Repairing ..")
	GuiCtrlSetData($ScanStatut3, "Repairing ..")
	GuiCtrlSetData($ScanStatut4, "Repairing ..")
	$Junko1 = FileFindFirstFile(@TEMPDIR & "\*.*")
	GuiCtrlSetData($InProgress, "Repairing ...")
	For $i = 1 TO 600
		GuiCtrlSetData($InProgress, "Repairing .")
		sleep(50)
		GuiCtrlSetData($InProgress, "Repairing ..")
$NextJunko1 = FileFindNextFile($Junko1)
If $NextJunko1 = "" then ExitLoop
FileDelete(@TEMPDIR  & "\" & $NextJunko1)
DirRemove(@TEMPDIR & "\" & $NextJunko1)
GuiCtrlSetData($InProgress, "Repairing ..")
Next
$Junko2 = FileFindFirstFile(@WINDOWSDIR & "\Temp\*.*")

For $p = $i TO 1400
	GuiCtrlSetData($InProgress, "Repairing ...")
	sleep(50)
	GuiCtrlSetData($InProgress, "Repairing .")
$NextJunko2 = FileFindNextFile($Junko2)
If $NextJunko2 = "" then ExitLoop
FileDelete(@WINDOWSDIR & "\Temp\" &  $NextJunko2)
DirRemove(@WINDOWSDIR & "\Temp\" &  $NextJunko2)
GuiCtrlSetData($InProgress, "Repairing ..")
Next

$Junko3 = FileFindFirstFile(@WINDOWSDIR & "\Prefetch\*.*")
For $t = $p to 3000
	GuiCtrlSetData($InProgress, "Repairing ...")
	sleep(50)
	GuiCtrlSetData($InProgress, "Repairing .")
$NextJunko3 = FileFindNextFile($Junko3)
If $NextJunko3 = "" then ExitLoop
FileDelete(@WINDOWSDIR & "\Prefetch\" &  $NextJunko3)
DirRemove(@WINDOWSDIR & "\Prefetch\"  & $NextJunko3)
GuiCtrlSetData($InProgress, "Repairing ..")
Next
GuiCtrlSetState($RepairDisk1, $GUI_HIDE)
GuiCtrlSetState($RepairDisk11, $GUI_HIDE)
GuiCtrlSetData($InProgress, "Repairing completed successfully ")
GuiCtrlSetData($countdisk, "Clean")
GuiCtrlSetColor($countdisk, $COLOR_GREEN)
GuiCtrlSetState($repairDisk1, $GUI_HIDE)
GuiCtrlSetState($repairDisk11, $GUI_HIDE)
GuiCtrlSetData($ScanStatut, "Completed")
	GuiCtrlSetData($ScanStatut1, "Completed")
	GuiCtrlSetData($ScanStatut2, "Completed")
	GuiCtrlSetData($ScanStatut3, "Completed")
	GuiCtrlSetData($ScanStatut4, "Completed")
GuiCtrlSetColor($disk1, $COLOR_GREEN)
GuiCtrlSetColor($disk2, $COLOR_GREEN)
GuiCtrlSetColor($disk3, $COLOR_GREEN)
Endfunc


func repairDisk2()
	GuiCtrlSetData($ScanStatut, "Repairing ..")
	GuiCtrlSetData($ScanStatut1, "Repairing ..")
	GuiCtrlSetData($ScanStatut2, "Repairing ..")
	GuiCtrlSetData($ScanStatut3, "Repairing ..")
	GuiCtrlSetData($ScanStatut4, "Repairing ..")
	GuiCtrlSetData($InProgress, "Repairing ...")
	For $a = 2 to 600
$sSubKey = RegEnumKey("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall", $a)
If $sSubKey = "" then ExitLoop
For $b = 1 to 300
$reg = RegEnumVal("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $sSubKey, $b)

If $reg = "" or $reg = "UninstallString" Then exitloop
Next
If $reg = "UninstallString" Then
	sleep(20)
Else
	RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $sSubKey)
EndIF
	Next
GuiCtrlSetColor($disk4, $COLOR_GREEN)
GuiCtrlSetColor($disk5, $COLOR_GREEN)
GuiCtrlSetColor($disk6, $COLOR_GREEN)
GuiCtrlSetData($countdisk2, "Clean")
GuiCtrlSetColor($countdisk2, $COLOR_GREEN)
GuiCtrlSetData($ScanStatut, "Completed")
	GuiCtrlSetData($ScanStatut1, "Completed")
	GuiCtrlSetData($ScanStatut2, "Completed")
	GuiCtrlSetData($ScanStatut3, "Completed")
	GuiCtrlSetData($ScanStatut4, "Completed")
GuiCtrlSetState($RepairDisk2, $GUI_HIDE)
GuiCtrlSetState($RepairDisk22, $GUI_HIDE)
GuiCtrlSetData($InProgress, "Repairing completed successfully ")
EndFunc

Func repairDisk3()
	GuiCtrlSetState($repairdisk1, $GUI_HIDE)
	GuiCtrlSetState($repairdisk2, $GUI_HIDE)
	GuiCtrlSetState($repairdisk11, $GUI_HIDE)
	GuiCtrlSetState($repairdisk22, $GUI_HIDE)
	GuiCtrlSetData($ScanStatut, "Repairing ..")
	GuiCtrlSetData($ScanStatut1, "Repairing ..")
	GuiCtrlSetData($ScanStatut2, "Repairing ..")
	GuiCtrlSetData($ScanStatut3, "Repairing ..")
	GuiCtrlSetData($ScanStatut4, "Repairing ..")
	$Junko1 = FileFindFirstFile(@TEMPDIR & "\*.*")
	GuiCtrlSetData($InProgress, "Repairing ...")
	For $i = 1 TO 600
		GuiCtrlSetData($InProgress, "Repairing .")
		sleep(50)
		GuiCtrlSetData($InProgress, "Repairing ..")
$NextJunko1 = FileFindNextFile($Junko1)
If $NextJunko1 = "" then ExitLoop
FileDelete(@TEMPDIR  & "\" & $NextJunko1)
DirRemove(@TEMPDIR & "\" & $NextJunko1)
GuiCtrlSetData($InProgress, "Repairing ..")
Next
$Junko2 = FileFindFirstFile(@WINDOWSDIR & "\Temp\*.*")

For $p = $i TO 1400
	GuiCtrlSetData($InProgress, "Repairing ...")
	sleep(50)
	GuiCtrlSetData($InProgress, "Repairing .")
$NextJunko2 = FileFindNextFile($Junko2)
If $NextJunko2 = "" then ExitLoop
FileDelete(@WINDOWSDIR & "\Temp\" &  $NextJunko2)
DirRemove(@WINDOWSDIR & "\Temp\" &  $NextJunko2)
GuiCtrlSetData($InProgress, "Repairing ..")
Next

$Junko3 = FileFindFirstFile(@WINDOWSDIR & "\Prefetch\*.*")
For $t = $p to 3000
	GuiCtrlSetData($InProgress, "Repairing ...")
	sleep(50)
	GuiCtrlSetData($InProgress, "Repairing .")
$NextJunko3 = FileFindNextFile($Junko3)
If $NextJunko3 = "" then ExitLoop
FileDelete(@WINDOWSDIR & "\Prefetch\" &  $NextJunko3)
DirRemove(@WINDOWSDIR & "\Prefetch\"  & $NextJunko3)
GuiCtrlSetData($InProgress, "Repairing ..")
Next
GuiCtrlSetData($countdisk, "Clean")
GuiCtrlSetColor($countdisk, $COLOR_GREEN)
For $a = 2 to 600
$sSubKey = RegEnumKey("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall", $a)
If $sSubKey = "" then ExitLoop
For $b = 1 to 300
$reg = RegEnumVal("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $sSubKey, $b)

If $reg = "" or $reg = "UninstallString" Then exitloop
Next
If $reg = "UninstallString" Then
	sleep(20)
Else
	RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $sSubKey)
EndIF
	Next
GuiCtrlSetColor($disk4, $COLOR_GREEN)
GuiCtrlSetColor($disk5, $COLOR_GREEN)
GuiCtrlSetColor($disk6, $COLOR_GREEN)
GuiCtrlSetData($countdisk2, "Clean")
GuiCtrlSetColor($countdisk2, $COLOR_GREEN)
GuiCtrlSetData($ScanStatut, "Completed")
	GuiCtrlSetData($ScanStatut1, "Completed")
	GuiCtrlSetData($ScanStatut2, "Completed")
	GuiCtrlSetData($ScanStatut3, "Completed")
	GuiCtrlSetData($ScanStatut4, "Completed")
GuiCtrlSetData($InProgress, "Repairing completed successfully ")
Endfunc

Func _Refresh($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg, $wParam, $lParam
	_GIF_RefreshGIF($hGIF)
EndFunc   ;==>_Refresh

Func _ValidateGIFs($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg, $wParam, $lParam
	_GIF_ValidateGIF($hGIF)
EndFunc   ;==>_ValidateGIFs