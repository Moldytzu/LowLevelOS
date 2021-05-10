[bits 64]

%macro	PUSH_REG	0
	push	r15
	push	r14
	push	r13
	push	r12
	push	r11
	push	r10
	push	r9
	push	r8
	push	rbp
	push	rdi
	push	rsi
	push	rdx
	push	rcx
	push	rbx
	push	rax
%endmacro
%macro	POP_REG		0
	pop	rax
	pop	rbx
	pop	rcx
	pop	rdx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r8
	pop	r9
	pop	r10
	pop	r11
	pop	r12
	pop	r13
	pop	r14
	pop	r15
%endmacro

InvalideOpcodeHandlerEntry:
	;cli
    PUSH_REG
    call InvalideOpcodeHandler
    POP_REG
	;sti
	ret

GeneralProtectionFaultHandlerEntry:
	;cli
    PUSH_REG
    call GeneralProtectionFaultHandler
    POP_REG
	;sti
	ret
PageFaultHandlerEntry:
    ;cli
	PUSH_REG
    call PageFaultHandler
    POP_REG
	;sti
	ret
DoubleFaultHandlerEntry:
    ;cli
	PUSH_REG
    call DoubleFaultHandler
    POP_REG
	;sti
	ret
KBHandlerEntry:
    ;cli
	PUSH_REG
    call KBHandler
    POP_REG
	;sti
	ret
MSHandlerEntry:
    ;cli
	PUSH_REG
    call MSHandler
    POP_REG
	;sti
	ret
PITHandlerEntry:
    ;cli
	PUSH_REG
    call PITHandler
    POP_REG
	;sti
	ret

EXTERN InvalideOpcodeHandler
EXTERN GeneralProtectionFaultHandler
EXTERN PageFaultHandler
EXTERN DoubleFaultHandler
EXTERN KBHandler
EXTERN MSHandler
EXTERN PITHandler

GLOBAL InvalideOpcodeHandlerEntry
GLOBAL GeneralProtectionFaultHandlerEntry
GLOBAL PageFaultHandlerEntry
GLOBAL DoubleFaultHandlerEntry
GLOBAL KBHandlerEntry
GLOBAL MSHandlerEntry
GLOBAL PITHandlerEntry