﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\WM\WM_IsFocussable.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_WM_IsFocussable
EXTRN	_WM_SendMessage:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\wm\wm_isfocussable.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _WM_IsFocussable
_TEXT	SEGMENT
_Msg$9436 = -32						; size = 16
_r$ = -8						; size = 4
_hWin$ = 8						; size = 4
_WM_IsFocussable PROC					; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 38
	mov	DWORD PTR _r$[ebp], 0
; Line 39
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN1@WM_IsFocus
; Line 41
	mov	DWORD PTR _Msg$9436[ebp+12], 0
; Line 42
	mov	DWORD PTR _Msg$9436[ebp], 31		; 0000001fH
; Line 43
	lea	eax, DWORD PTR _Msg$9436[ebp]
	push	eax
	mov	ecx, DWORD PTR _hWin$[ebp]
	push	ecx
	call	_WM_SendMessage
	add	esp, 8
; Line 44
	mov	eax, DWORD PTR _Msg$9436[ebp+12]
	mov	DWORD PTR _r$[ebp], eax
$LN1@WM_IsFocus:
; Line 46
	mov	eax, DWORD PTR _r$[ebp]
; Line 47
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN6@WM_IsFocus
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN6@WM_IsFocus:
	DD	1
	DD	$LN5@WM_IsFocus
$LN5@WM_IsFocus:
	DD	-32					; ffffffe0H
	DD	16					; 00000010H
	DD	$LN4@WM_IsFocus
$LN4@WM_IsFocus:
	DB	77					; 0000004dH
	DB	115					; 00000073H
	DB	103					; 00000067H
	DB	0
_WM_IsFocussable ENDP
_TEXT	ENDS
END