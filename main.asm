include main.inc
include srect.asm
.data
t   dd 0
e   db 0
b   dd 0
i   dd 0
;s   db 0
    head db "    Î - - - - - - Ü ! ! !",0
    mess db "Ï",13,
            "    Î",13,
            "        Í",13,
            "            ß",13,
            "                Ò",13,
            "                    Í",13,
            "                        Î",13,
            "                            ?",0
    a byte 0
    titl db "Message :",0
    hwnd dd ?

     NEWHWND   DD 0
     STRUP     STARTUP <?>
     INF       PROCINF <?>
     HINST  DD 0 
     PATH   DB "C:\Windows\System32\calc.exe",0
  

     clas db "calcFrame",0
     titl0 db " ",0
     titl1 db "Ñ",0
     titl2 db "ÑÏ",0
     titl3 db "ÑÏÀ",0
     titl4 db "ÑÏÀÑ",0
     titl5 db "ÑÏÀÑÈ",0
     titl6 db "ÑÏÀÑÈÁ",0
     titl7 db "ÑÏÀÑÈÁÎ",0
     titl8 db "ÑÏÀÑÈÁÎ ",0
     titl9 db "ÑÏÀÑÈÁÎ Ç",0
     titl10 db "ÑÏÀÑÈÁÎ ÇÀ",0
     titl11 db "ÏÀÑÈÁÎ ÇÀ ",0
     titl12 db "ÀÑÈÁÎ ÇÀ Ï",0
     titl13 db "ÑÈÁÎ ÇÀ ÏÎ",0
     titl14 db "ÈÁÎ ÇÀ ÏÎÍ",0
     titl15 db "ÁÎ ÇÀ ÏÎÍÈ",0
     titl16 db "Î ÇÀ ÏÎÍÈÌ",0
     titl17 db " ÇÀ ÏÎÍÈÌÀ",0
     titl18 db "ÇÀ ÏÎÍÈÌÀÍ !",0
     titl19 db "À ÏÎÍÈÌÀÍÈ !!",0
     titl20 db " ÏÎÍÈÌÀÍÈÅ !!!",0


.code
start:

   
    fn SetConsoleTitle,"Message :"
    ;--------------
    fn SetWindowSize1,MAX_WIDHT1,MAX_HEIGHT1
    ;--------------
    fn HideCursor
    ;-------------- 
    fn Main
    ;--------------  
    exit
;*********************************
gotoxy proc uses ebx esi edi x:DWORD,y:DWORD

    mov ebx,y
    shl ebx,16
    or ebx,x
    ;----------------------------------------
    fn SetConsoleCursorPosition,rv(GetStdHandle,-11),ebx
    ;----------------------------------------
	ret
gotoxy endp
HideCursor proc uses ebx esi edi
    LOCAL ci:CONSOLE_CURSOR_INFO

    fn GetStdHandle,-11
    ;-----------------------------
    push eax
    lea ebx,ci
    ;-----------------------------
    fn  GetConsoleCursorInfo,eax,ebx
    ;-----------------------------
    mov ci.bVisible,0
    ;-----------------------------
    pop eax
    ;------------------------------
    fn  SetConsoleCursorInfo,eax,ebx
    ;------------------------------
	ret
HideCursor endp
SetWindowSize proc uses ebx esi edi wd:DWORD,ht:DWORD

    fn GetStdHandle,-11
    ;--------------------
    push eax
    ;--------------------
    mov ebx,ht
    shl ebx,16
    ;--------------------
    or ebx,wd
    ;--------------------
    fn SetConsoleScreenBufferSize,eax,ebx
    ;--------------------
    pop eax
    ;--------------------
    fn SetConsoleWindowInfo,eax,1,offset srect
    
    ret
SetWindowSize endp
;**********************************
lesson proc uses ebx esi edi
    push offset titl
    push 0
    call FindWindowA@8

    mov hwnd,eax

    push 0
    push eax
    call ShowWindow@8

    
    fn Sleep,750
    push 5
    push hwnd
    call ShowWindow@8

    ret
lesson endp

Main proc
LOCAL x :DWORD
LOCAL y :DWORD

fn Sleep,1000
fn SetWindowSize2,MAX_WIDHT2,MAX_HEIGHT2

;fn RangedRand,0,255
;mov byte ptr[b],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),12
fn Sleep,100
fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,0,0
fn crt_putchar,220

fn SetWindowSize3,MAX_WIDHT3,MAX_HEIGHT3
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,9,0
fn crt_putchar,220

fn SetWindowSize4,MAX_WIDHT4,MAX_HEIGHT4
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,19,0
fn crt_putchar,220

fn SetWindowSize5,MAX_WIDHT5,MAX_HEIGHT5
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,29,0
fn crt_putchar,220

fn SetWindowSize6,MAX_WIDHT6,MAX_HEIGHT6
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,39,0
fn crt_putchar,220

fn SetWindowSize7,MAX_WIDHT7,MAX_HEIGHT7
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,49,0
fn crt_putchar,220


fn SetWindowSize8,MAX_WIDHT8,MAX_HEIGHT8
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,59,0
fn crt_putchar,220

fn SetWindowSize9,MAX_WIDHT9,MAX_HEIGHT9
fn Sleep,100

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,69,0
fn crt_putchar,216

fn SetWindowSize10,MAX_WIDHT10,MAX_HEIGHT10
fn Sleep,200

fn gotoxy,79,0
fn crt_putchar,1
fn Sleep,200
fn gotoxy,79,0
fn crt_putchar,216


fn SetWindowSizea,MAX_WIDHTa,MAX_HEIGHTa
fn Sleep,200

fn SetWindowSizeb,MAX_WIDHTb,MAX_HEIGHTb
fn Sleep,200

fn SetWindowSizec,MAX_WIDHTc,MAX_HEIGHTc
fn Sleep,200

fn SetWindowSized,MAX_WIDHTd,MAX_HEIGHTd
fn Sleep,200

fn SetWindowSize,MAX_WIDHT,MAX_HEIGHT

fn Sleep,1000

fn crt_srand,rv(crt_time,0)


mov dword ptr[i],0
L_1:
mov byte ptr[e],0

L:
fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t
fn RangedRand,0,98
mov dword ptr [x],eax
fn RangedRand,1,48
mov dword ptr [y],eax

fn gotoxy,x,y
fn RangedRand,0,255     ;128,159
fn crt_putchar,al

.if e>30
fn crt_putchar,32
fn crt_putchar,151
fn crt_putchar,136
fn crt_putchar,146
fn crt_putchar,128
fn crt_putchar,137
fn crt_putchar,32
fn crt_putchar,143
fn crt_putchar,142
fn crt_putchar,32
fn crt_putchar,129
fn crt_putchar,147
fn crt_putchar,138
fn crt_putchar,130
fn crt_putchar,128
fn crt_putchar,140
fn crt_putchar,32
              
jmp L_1

.endif
fn Sleep,1
inc e
inc i
.if i>5000
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),0
fn crt_system,"cls"
fn Sleep,1000
    fn lesson
L_3:
    push 5
    push hwnd
    call ShowWindow@8

fn Sleep,200
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,42,16

fn crt_printf,"|____|"
fn gotoxy,40,17
fn crt_printf,"|___"
fn gotoxy,46,17
fn crt_printf,"___|"
fn gotoxy,38,18
fn crt_printf,"|___"
fn gotoxy,38,19
fn crt_printf,"___|"
fn gotoxy,38,20
fn crt_printf,"|___"
fn gotoxy,38,21
fn crt_printf,"___|"
fn gotoxy,38,22
fn crt_printf,"|___"
fn gotoxy,38,23
fn crt_printf,"___|"
fn gotoxy,48,18
fn crt_printf,"|___"
fn gotoxy,48,19
fn crt_printf,"___|"
fn gotoxy,48,20
fn crt_printf,"|___"
fn gotoxy,48,21
fn crt_printf,"___|"
fn gotoxy,48,22
fn crt_printf,"|___"
fn gotoxy,48,23
fn crt_printf,"___|"
fn gotoxy,40,24
fn crt_printf,"|___"
fn gotoxy,46,24
fn crt_printf,"___|"
fn gotoxy,42,25
fn crt_printf,"__|___"


fn Sleep,300
    fn lesson
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,38,16
fn crt_printf,"|____|____|_"
fn gotoxy,38,17
fn crt_printf,"_"
fn gotoxy,49,17
fn crt_printf,"_"
fn gotoxy,42,17
fn crt_printf,"|___"
fn gotoxy,42,18
fn crt_printf,"___|"
fn gotoxy,42,19
fn crt_printf,"|___"
fn gotoxy,42,20
fn crt_printf,"___|"
fn gotoxy,42,21
fn crt_printf,"|___"
fn gotoxy,42,22
fn crt_printf,"___|"
fn gotoxy,42,23
fn crt_printf,"|___"
fn gotoxy,42,24
fn crt_printf,"___|"
fn gotoxy,41,25
fn crt_printf,"|____|"


fn Sleep,300
    fn lesson
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,38,16
fn crt_printf,"|____|"
fn gotoxy,38,17
fn crt_printf,"__|___"
fn gotoxy,40,18
fn crt_printf,"|___"
fn gotoxy,40,19
fn crt_printf,"___|"
fn gotoxy,40,20
fn crt_printf,"|____|____"
fn gotoxy,40,21
fn crt_printf,"|___"
fn gotoxy,40,22
fn crt_printf,"___|"
fn gotoxy,40,23
fn crt_printf,"|___"
fn gotoxy,40,24
fn crt_printf,"___|"
fn gotoxy,40,25
fn crt_printf,"__|____|__"
fn gotoxy,48,21
fn crt_printf,"|___"
fn gotoxy,48,22
fn crt_printf,"___|"
fn gotoxy,48,23
fn crt_printf,"|___"
fn gotoxy,48,24
fn crt_printf,"___|"

fn Sleep,300
    fn lesson
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,38,16
fn crt_printf,"|____|____|___"
fn gotoxy,50,17
fn crt_printf,"__"
fn gotoxy,40,17
fn crt_printf,"|___"
fn gotoxy,40,18
fn crt_printf,"___|"
fn gotoxy,40,19
fn crt_printf,"|___"
fn gotoxy,40,20
fn crt_printf,"____|____"
fn gotoxy,40,21
fn crt_printf,"___|"
fn gotoxy,40,22
fn crt_printf,"|___"
fn gotoxy,40,23
fn crt_printf,"___|"
fn gotoxy,50,23
fn crt_printf,"__"
fn gotoxy,38,24
fn crt_printf,"_|____|____|__"

fn Sleep,300
    fn lesson
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,38,16
fn crt_printf,"_|____|____|__"
fn gotoxy,50,17
fn crt_printf,"__"
fn gotoxy,40,17
fn crt_printf,"|___"
fn gotoxy,40,18
fn crt_printf,"___|"
fn gotoxy,40,19
fn crt_printf,"____|____"
fn gotoxy,40,20
fn crt_printf,"|___"
fn gotoxy,40,21
fn crt_printf,"___|"
fn gotoxy,40,22
fn crt_printf,"|___"
fn gotoxy,40,23
fn crt_printf,"___|"
fn gotoxy,48,20
fn crt_printf,"|___"
fn gotoxy,48,21
fn crt_printf,"___|"
fn gotoxy,48,22
fn crt_printf,"|___"
fn gotoxy,48,23
fn crt_printf,"___|"
fn gotoxy,38,24
fn crt_printf,"|____|____|_"



fn Sleep,300
    fn lesson
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t
fn gotoxy,38,16
fn crt_printf,"|___"
fn gotoxy,38,17
fn crt_printf,"___|"
fn gotoxy,38,18
fn crt_printf,"|___"
fn gotoxy,38,19
fn crt_printf,"___|"
fn gotoxy,38,20
fn crt_printf,"|___"
fn gotoxy,38,21
fn crt_printf,"___|"
fn gotoxy,38,22
fn crt_printf,"|___"
fn gotoxy,38,23
fn crt_printf,"___|"
fn gotoxy,38,24
fn crt_printf,"|___"

fn gotoxy,46,18
fn crt_printf,"_|"
fn gotoxy,45,19
fn crt_printf,"|_"
fn gotoxy,44,20
fn crt_printf,"_|"
fn gotoxy,43,21
fn crt_printf,"|_"
fn gotoxy,42,22
fn crt_printf,"_|"


fn gotoxy,48,16
fn crt_printf,"___|"
fn gotoxy,48,17
fn crt_printf,"|___"
fn gotoxy,48,18
fn crt_printf,"___|"
fn gotoxy,48,19
fn crt_printf,"|___"
fn gotoxy,48,20
fn crt_printf,"___|"
fn gotoxy,48,21
fn crt_printf,"|___"
fn gotoxy,48,22
fn crt_printf,"___|"
fn gotoxy,48,23
fn crt_printf,"|___"
fn gotoxy,48,24
fn crt_printf,"___|"


fn Sleep,300
    fn lesson
fn crt_system,"cls"

fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,42,16
fn crt_printf,"_|____"
fn gotoxy,40,17
fn crt_printf,"|___"
fn gotoxy,46,17
fn crt_printf,"___|"
fn gotoxy,38,18
fn crt_printf,"|___"
fn gotoxy,38,19
fn crt_printf,"___|"
fn gotoxy,38,20
fn crt_printf,"|___"
fn gotoxy,38,21
fn crt_printf,"___|"
fn gotoxy,38,22
fn crt_printf,"|___"
fn gotoxy,38,23
fn crt_printf,"___|"
fn gotoxy,48,18
fn crt_printf,"|___"

fn gotoxy,48,23
fn crt_printf,"_|__"
fn gotoxy,40,24
fn crt_printf,"__|_"
fn gotoxy,46,24
fn crt_printf,"___|"
fn gotoxy,42,25
fn crt_printf,"____|_"


fn Sleep,300
    fn lesson
fn crt_system,"cls"


fn RangedRand,0,255
mov byte ptr[t],al
fn SetConsoleTextAttribute,rv(GetStdHandle,-11),t

fn gotoxy,40,16
fn crt_printf,"|___"
fn gotoxy,40,17
fn crt_printf,"___|"
fn gotoxy,40,18
fn crt_printf,"|___"
fn gotoxy,40,19
fn crt_printf,"___|"
fn gotoxy,40,20
fn crt_printf,"__|____|__"
fn gotoxy,40,21
fn crt_printf,"|___"
fn gotoxy,40,22
fn crt_printf,"___|"
fn gotoxy,40,23
fn crt_printf,"|___"
fn gotoxy,40,24
fn crt_printf,"___|"
fn gotoxy,40,25
fn crt_printf,"|____|____"
fn gotoxy,48,21
fn crt_printf,"|___"
fn gotoxy,48,22
fn crt_printf,"___|"
fn gotoxy,48,23
fn crt_printf,"|___"
fn gotoxy,48,24
fn crt_printf,"___|"


fn Sleep,300
    fn crt_system,"cls"
fn Sleep,300

    push offset titl
    push 0
    call FindWindowA@8

    mov hwnd,eax

    push 0
    push eax
    call ShowWindow@8


    push 68
    push offset head
    push offset mess
    push 0 
 
    call MessageBoxA@16
    cmp eax,7
    jz L_3
    
jmp L_2
.endif
jmp L


L_2:

     PUSH  0
     CALL  GetModuleHandleA@4
     MOV  [HINST], EAX

     MOV STRUP.cb,68
     MOV STRUP.lpReserved,0
     MOV STRUP.lpDesktop,0
     MOV STRUP.lpTitle,0
     MOV STRUP.cbReserved2,0
     MOV STRUP.lpReserved2,0

     PUSH OFFSET INF
     PUSH OFFSET STRUP
     PUSH 0
     PUSH 0
     PUSH 0
     PUSH 0
     PUSH 0
     PUSH 0
     PUSH OFFSET PATH
     PUSH 0
     CALL CreateProcessA@40
     
   

        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl0
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl1
        push eax
        call SetWindowTextA@8
        
         fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl2
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl3
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl4
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl5
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl6
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl7
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl8
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl9
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl10
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl11
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl12
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl13
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl14
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl15
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl16
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl17
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl18
        push eax
        call SetWindowTextA@8
        
        fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl19
        push eax
        call SetWindowTextA@8
        
         fn Sleep,100
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl20
        push eax
        call SetWindowTextA@8

        fn Sleep,1000
        push 0
        push offset clas
        call FindWindowA@8
        push offset titl0
        push eax
        call SetWindowTextA@8

        
fn Sleep,500

    push 0
    push offset clas
    call FindWindowA@8
    push 0
    push 0
    push 16
    push eax
    call SendMessageA@16

fn Sleep,300
    push 5
    push hwnd
    call ShowWindow@8
  fn gotoxy,35,10
  fn crt_printf," **"
  fn Sleep,5
  fn gotoxy,35,12
  fn crt_printf,"*  *"
  fn Sleep,5
  fn gotoxy,35,14
  fn crt_printf,"*  *"
  fn Sleep,5
  fn gotoxy,35,16
  fn crt_printf,"*  *"
  fn Sleep,5
  fn gotoxy,35,18
  fn crt_printf,"*  *"
  fn Sleep,5
  fn gotoxy,35,20
  fn crt_printf,"*  * **  ** ** **"
  fn Sleep,5
  fn gotoxy,35,22
  fn crt_printf,"*  **  **  *  *  *"
  fn Sleep,5
  fn gotoxy,35,24
  fn crt_printf,"*  **  **  *  *  *"
  fn Sleep,5
  fn gotoxy,35,26
  fn crt_printf,"*  **  **  *  *  *"
  fn Sleep,5
  fn gotoxy,35,28
  fn crt_printf,"*  **  **  *  *  *"
  fn Sleep,5
  fn gotoxy,35,30
  fn crt_printf," **  **  ** ** **"
  fn Sleep,30

ret

Main endp

end start