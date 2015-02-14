;        1         2         3         4         5         6         7
;234567890123456789012345678901234567890123456789012345678901234567890
;=====================================================================
;
; data_kernel.inc
;
; This header file contains structures that are related to
; Linux Kernel systemcalls.
;
;=====================================================================

section .text

XEventFunc_UnmapNotify:
; ********************************************* UnmapNotify Event ****
; READ( socketX, ESI, 31 )
    mov    eax, _SYSCALL_READ_
    mov    ebx, [socketX]
    lea    ecx, [XEvent_UnmapNotify]
    mov    edx, 31
    int    0x80
; WRITE( stdout, EDI, evtmsg_len )
    mov    eax, _SYSCALL_WRITE_
    mov    ebx, _STDOUT_
    lea    ecx, [evtmsg_UnmapNotify]
    mov    edx, [evtmsg_len]
    int    0x80
    jmp    mainloop