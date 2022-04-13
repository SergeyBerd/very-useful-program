.code
SetWindowSize1 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect1

    ret
SetWindowSize1 endp

SetWindowSize2 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect2

    ret
SetWindowSize2 endp

SetWindowSize3 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect3

    ret
SetWindowSize3 endp

SetWindowSize4 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect4

    ret
SetWindowSize4 endp

SetWindowSize5 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect5

    ret
SetWindowSize5 endp

SetWindowSize6 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect6

    ret
SetWindowSize6 endp

SetWindowSize7 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect7

    ret
SetWindowSize7 endp

SetWindowSize8 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect8

    ret
SetWindowSize8 endp

SetWindowSize9 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect9

    ret
SetWindowSize9 endp

SetWindowSize10 proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srect10

    ret
SetWindowSize10 endp

SetWindowSizea proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srecta

    ret
SetWindowSizea endp

SetWindowSizeb proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srectb

    ret
SetWindowSizeb endp

SetWindowSizec proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srectc

    ret
SetWindowSizec endp

SetWindowSized proc uses ebx esi edi wd:DWORD,ht:DWORD

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
    fn SetConsoleWindowInfo,eax,1,offset srectd

    ret
SetWindowSized endp
