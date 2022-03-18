INCLUDE Irvine32FCIS.inc ;DO NOT CHANGE THIS LINE

;###################################################################################;#
;							AUTOGRADER RELATED .DATA								;#
;				DO NOT MODIFY, DELETE NOR ADD ANY LINE HERE							;#
;###################################################################################;#
.data																				;#
																					;#
	prmpt byte "Please enter question number 1, 2, 3, 4, 5, 6 or enter 0 to exit:", 0	        ;#
	wrongChoice byte "Please enter a valid question number!", 0						;#
	tmpstr byte 5 dup(?), 0															;#
;###################################################################################;#
																					
;#######################################################							
;				STUDENTS  .DATA	SECTION     		   #							
;		   THIS SECTION MADE FOR STUDENTS' DATA        #							
;      YOU CAN MODIFY, ADD OR EDIT TO THIS SECTION     #							
;#######################################################							
																					
.data																				
;-------------------------Q1 DATA-----------------------	

; Enter Q1 data here
lengArr BYTE ?
array1 dword 100 dup (?)

message byte "Enter number of Elements: ", 0
m_of_input byte"Enter your Elements: ",0
message1 byte"Your Rotated Elements are: ",0


;-----------------------Q1 DATA End---------------------	


																					
;-------------------------Q2 DATA-----------------------	

; Enter Q2 data here

str2 byte 100 dup(?)

message2 byte "Please, Enter your first index: ", 0
message3 byte "Please, Enter your second index: ", 0
message4 byte "Please, Enter your word: ", 0
message5 byte "Your Swapped word: ", 0

;-----------------------Q2 DATA End---------------------	


;-------------------------Q3 DATA-----------------------	

; Enter Q3 data here
strg1 byte 20 dup(?)
strg2 byte 20 dup(?)

message6 byte " IS CORRECT", 0
message7 byte " IS ALMOST CORRECT", 0
message8 byte " IS WRONG", 0


;-----------------------Q3 DATA End---------------------	


;-------------------------Q4 DATA-----------------------	

; Enter Q4 data here
intervals dword 20 dup(?)
ccom dword 0
N_of_intervals dword 0
message9 byte "Enter the number of intervals N: ", 0
message99 byte "Enter the N intervals: ", 0
message999 byte "The input number exists the following number of times in the N intervals: ", 0



;-----------------------Q4 DATA End---------------------	


;-------------------------Q5 DATA-----------------------	

; Enter Q5 data here

result dword 0

message10 byte "Please Enter N: ", 0
message11 byte "The factorial is: ", 0

;-----------------------Q5 DATA End---------------------	


;-------------------------Q6 DATA-----------------------	

; ; Enter Q6 data here
val dword 0
message12 byte "Enter a: ", 0
message13 byte "Enter r: ", 0
message14 byte "Enter n: ", 0
ratio dword 0
message15 byte "The generated sequence: ", 0


;-----------------------Q6 DATA End---------------------	
														
														
.code													
;########################################################
;			AUTOGRADER RELATED METHOD			       ;#
;			  DO NOT MODIFY, DELETE					   ;#
;			  NOR ADD ANY LINE HERE					   ;#
;#######################################################
;#######################################################
MAIN PROC											  ;#
	PROGLOOP:										  ;#
		MOV EDX, OFFSET PRMPT						  ;#
		CALL WRITESTRING							  ;#
		CALL CRLF									  ;#
		CALL READINT								  ;#
		CMP EAX, 0									  ;#
		JE FIN										  ;#
													  ;#
		CMP EAX, 1									  ;#
		JE _Q1										  ;#
													  ;#
		CMP EAX, 2									  ;#
		JE _Q2									      ;#
													  ;#		
		CMP EAX, 3									  ;#
		JE _Q3										  ;#
													  ;#
		CMP EAX, 4									  ;#
		JE _Q4										  ;#
													  ;#		
		CMP EAX, 5								      ;#
		JE _Q5										  ;#
													  ;#
		CMP EAX, 6									  ;#
		JE _Q6										  ;#
		JMP WRONG									  ;#
													  ;#
		_Q1:										  ;#
		CALL Q1										  ;#
		JMP CONT									  ;#
													  ;#
		_Q2:										  ;#		
		CALL Q2										  ;#
		JMP CONT									  ;#
													  ;#
		_Q3:										  ;#		
		CALL Q3										  ;#
		JMP CONT									  ;#
													  ;#
		_Q4:										  ;#		
		CALL Q4										  ;#
		JMP CONT									  ;#
													  ;#		
		_Q5:										  ;#		
		CALL Q5										  ;#
		JMP CONT									  ;#
													  ;#
		_Q6:										  ;#		
		CALL Q6										  ;#
		JMP CONT							   		  ;#
												      ;#
		WRONG:										  ;#
		MOV EDX, OFFSET wrongChoice					  ;#
		CALL WRITESTRING							  ;#
		CALL CRLF									  ;#
													  ;#
		CONT:										  ;#
		JMP PROGLOOP								  ;#
													  ;#
		FIN:										  ;#
													  ;#
	EXIT											  ;#
MAIN ENDP											  ;#
;#######################################################


;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question one procedure here
;----------------------------------------------------------
Q1 PROC
	

mov edx, OFFSET message					  
CALL writestring
mov edi, offset array1
call readint
mov ecx,eax
mov ebx,ecx
mov edx, OFFSET m_of_input					  
CALL writestring
l:
call readint
mov [edi],eax
add edi,type array1
loop l
mov esi,edi 
pop edi
mov ecx,ebx
sub ecx,2
mov edx, offset message1
call writestring
mov al,'['
call writechar
mov esi,8
l1:
mov eax,[array1+esi]
call writedec
mov al,","
call writechar
mov al," "
call writechar
add esi , type array1
loop l1
mov eax,[array1]
call writedec
mov al,","
call writechar
mov al," "
call writechar
mov eax,[array1+4]
call writedec
mov al,']'
call writechar

call crlf
push edi


RET
Q1 ENDP



;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question two procedure here
;----------------------------------------------------------
Q2 PROC

MOV EDX, OFFSET message2					  
		CALL writestring
		call readint
mov ebx,eax

MOV EDX, OFFSET message3					  
		CALL writestring
		call readint
mov edi,eax

MOV EDX, OFFSET message4
CALL writestring

mov edx, offset str2
mov ecx, lengthof str2
call readstring


MOV EDX, OFFSET message5
CALL writestring

dec ebx
dec edi



 mov al, byte ptr[str2+ebx]
 mov ah, byte ptr[str2+edi]

 mov [str2+ebx],ah
 mov [str2+edi],al

 mov edx ,offset str2
 


call writestring

call crlf



	
	RET

Q2 ENDP



;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question three procedure here
;----------------------------------------------------------


Q3 PROC
	

mov edx, offset strg1
mov ecx, lengthof strg1
call readstring
mov eax,ecx

mov edx, offset strg2
mov ecx, lengthof strg2
call readstring

mov ebx,ecx




;;take the large 

CMP eax , ebx
	jA next
	JB nn
	nn:
	mov ecx,ebx
	next:
	mov ecx,eax


mov ebx,0
mov esi,0
l_of_com:

mov al,byte ptr[strg1+esi]
mov ah,byte ptr[strg2+esi]
inc esi


cmp al,ah
JE next1

inc ebx

next1:


loop l_of_com

cmp ebx,0
JE nexteq

cmp ebx,2
JBE nextmost

cmp ebx,3
JAE nextwrong


nexteq:
MOV EDX, OFFSET strg2
CALL writestring
MOV EDX, OFFSET message6
CALL writestring
call crlf
RET

nextmost :
MOV EDX, OFFSET strg2
CALL writestring
MOV EDX, OFFSET message7
CALL writestring
call crlf
RET

nextwrong:

MOV EDX,offset strg2
CALL writestring
MOV EDX, OFFSET message8
CALL writestring
call crlf
RET




Q3 ENDP



;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question four procedure here
;----------------------------------------------------------
Q4 PROC

mov edx, OFFSET message9					  
CALL writestring
call readint

mov ecx,eax
add ecx,eax  ;;ecx=2N

mov esi,0
mov ebx,0

mov edx,offset intervals
take_input:

call readint
mov [intervals+esi],eax
inc esi

loop take_input

call readint

mov ccom,eax

mov esi,0
mov ebx,1
dec ecx
loop_com:

mov esp,ecx

mov edi,0 
mov ecx,0
mov ecx,[edx+esi]
cmp ccom,esp
JBE eendd
inc edi
mov ecx,0
mov ecx,[edx+ebx]

cmp ccom,ecx
JAE eendd
inc edi

cmp edi,2
JNE eendd

inc N_of_intervals

eendd:

mov ecx,esp
inc esi
inc ebx


loop loop_com

mov edx, OFFSET message999					  
CALL writestring

mov eax, N_of_intervals

call writedec
call crlf


	

	RET

Q4 ENDP



;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question five procedure here
;----------------------------------------------------------
Q5 PROC


mov edx, OFFSET message10					  
CALL writestring	
call readint
;mov result,eax
mov ecx ,eax

mov esi , eax
loo:

cmp ecx,1
JE nn

mov result ,0 
mov ebx,ecx
dec ecx
inn:


add result,esi

loop inn

mov esi,result
;inc ecx
mov ecx ,ebx


loop loo
nn:
mov edx, OFFSET message11					  
CALL writestring	
mov eax,result
call writedec
call crlf

	RET





Q5 ENDP



;----------------------------------------------------------
;DO NOT CHANGE THE FUNCTION NAME
;
; Student's procedure
; Question six procedure here
;----------------------------------------------------------
Q6 PROC
	





mov edx, OFFSET message12					  
CALL writestring	
call readint
mov ebx,eax

mov edx, OFFSET message13					  
CALL writestring	
call readint
mov ratio,eax

mov edx, OFFSET message14					  
CALL writestring	
call readint
mov ecx,eax
	

mov edx, OFFSET message15					  
CALL writestring
call crlf

mov val ,ebx

lo:

mov eax,val
call writedec
call crlf

mov esi,ecx

mov ecx,ratio
dec ecx
mov edi ,val
inn:


add val,edi

loop inn


mov ecx ,esi


loop lo

	RET

Q6 ENDP

END MAIN