include \masm32\include\masm32rt.inc
extern MessageBoxA@16: near
extern FindWindowA@8:near
extern ShowWindow@8:near
extern SetWindowTextA@8:near
EXTERN CreateProcessA@40:NEAR
EXTERN GetModuleHandleA@4:NEAR
extern SendMessageA@16:near


include RangedRand.asm
SetWindowSize       proto :DWORD,:DWORD

SetWindowSize1      proto :DWORD,:DWORD
SetWindowSize2      proto :DWORD,:DWORD
SetWindowSize3      proto :DWORD,:DWORD
SetWindowSize4      proto :DWORD,:DWORD
SetWindowSize5      proto :DWORD,:DWORD
SetWindowSize6      proto :DWORD,:DWORD
SetWindowSize7      proto :DWORD,:DWORD
SetWindowSize8      proto :DWORD,:DWORD
SetWindowSize9      proto :DWORD,:DWORD
SetWindowSize10     proto :DWORD,:DWORD

SetWindowSizea      proto :DWORD,:DWORD
SetWindowSizeb      proto :DWORD,:DWORD
SetWindowSizec      proto :DWORD,:DWORD
SetWindowSized      proto :DWORD,:DWORD

Main                proto
HideCursor          proto
gotoxy              proto :DWORD,:DWORD
lesson		    proto

STARTUP STRUC
     cb                DD 0
     lpReserved        DD 0
     lpDesktop         DD 0
     lpTitle           DD 0
     cbReserved2       DW 0
     lpReserved2       DD 0
     a                 DD 0
     b                 DD 0
     hStdError         DD 0
STARTUP ENDS

PROCINF STRUC
     hProcess DD ?
     hThread  DD ?
     Idproc   DD ?
     idThr    DD ?
PROCINF ENDS

.const
    MAX_WIDHT           equ 90
    MAX_HEIGHT          equ 50

    MAX_WIDHT1           equ 1
    MAX_HEIGHT1          equ 1
    MAX_WIDHT2           equ 90
    MAX_HEIGHT2          equ 0
    MAX_WIDHT3           equ 0
    MAX_HEIGHT3          equ 0
    MAX_WIDHT4           equ 0
    MAX_HEIGHT4          equ 0
    MAX_WIDHT5           equ 0
    MAX_HEIGHT5          equ 0
    MAX_WIDHT6           equ 0
    MAX_HEIGHT6          equ 0
    MAX_WIDHT7           equ 0
    MAX_HEIGHT7          equ 0
    MAX_WIDHT8           equ 0
    MAX_HEIGHT8          equ 0
    MAX_WIDHT9           equ 0
    MAX_HEIGHT9          equ 0
    MAX_WIDHT10          equ 1
    MAX_HEIGHT10         equ 90

    MAX_WIDHTa           equ 90
    MAX_HEIGHTa          equ 10
    MAX_WIDHTb           equ 90
    MAX_HEIGHTb          equ 20
    MAX_WIDHTc           equ 90
    MAX_HEIGHTc          equ 30
    MAX_WIDHTd           equ 90
    MAX_HEIGHTd          equ 40


.data?




.data
srect                   SMALL_RECT <0,0,89,49>

srect1                   SMALL_RECT <0,0,0,0>
srect2                   SMALL_RECT <0,0,10,0>
srect3                   SMALL_RECT <0,0,20,0>
srect4                   SMALL_RECT <0,0,30,0>
srect5                   SMALL_RECT <0,0,40,0>
srect6                   SMALL_RECT <0,0,50,0>
srect7                   SMALL_RECT <0,0,60,0>
srect8                   SMALL_RECT <0,0,70,0>
srect9                   SMALL_RECT <0,0,80,0>
srect10                  SMALL_RECT <0,0,89,0>

srecta                   SMALL_RECT <0,0,89,9>
srectb                   SMALL_RECT <0,0,89,19>
srectc                   SMALL_RECT <0,0,89,29>
srectd                   SMALL_RECT <0,0,89,39>