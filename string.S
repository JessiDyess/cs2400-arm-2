		;		ARM Programming Assignment #2: Writing C-strings
		;
		;		Write a program that assembles the values in chars*
		;       into a C-style string. A C-style string is an array
		;       of byte-size characters, terminated by a NULL (0x0).
		;       Write the C-string to the FILL memory at 'string'.
		;       Note: It's up to you to declare the correct number
		;       of bytes to hold the result.

		;		Your code here

chars0	DCD		'T', 'h', 'e', ' ', '2', '0', '1', '8', ' ', 'T', 'u'
chars1	DCD		'r', 'i', 'n', 'g', ' ', 'A', 'w', 'a', 'r', 'd', ' '
chars2	DCD		'w', 'a', 's', ' ', 'a', 'w', 'a', 'r', 'd', 'e', 'd'
chars3	DCD		' ', 't', 'o', ' ', 'B', 'e', 'n', 'g', 'i', 'o'
chars4	DCD		' ', 'H', 'i', 'n', 't', 'o', 'n', ' ', 'a', 'n'
chars5	DCD		'd', ' ', 'L', 'e', 'C', 'u', 'n', 'n', ' ', 'f', 'o'
chars6	DCD		'r', ' ', 't', 'h', 'e', 'i', 'r', ' ', 'w', 'o', 'r'
chars7	DCD		'k', ' ', 'o', 'n', ' ', 'n', 'e', 'u', 'r', 'a', 'l'
chars8	DCD		'n', 'e', 't', 'w', 'o', 'r', 'k', 's', '.'
count	DCD		95
;string	FILL	?
	
			adr		r0, chars0
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopOne
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunOne
			b		loopOne
			
EndRunOne
			adr		r0, chars1
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopTwo
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunTwo
			b		loopTwo
			
EndRunTwo
			adr		r0, chars2
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopThree
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunThree
			b		loopThree
			
EndRunThree
			adr		r0, chars3
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopFour
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunFour
			b		loopFour
			
EndRunFour
			adr		r0, chars4
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopFive
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunFive
			b		loopFive
EndRunFive
			
			adr		r0, chars5
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopSix
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunSix
			b		loopSix
			
EndRunSix
			adr		r0, chars6
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopSeven
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunSeven
			b		loopSeven
			
EndRunSeven
			adr		r0, chars7
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopEight
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunEight
			b		loopEight
			
EndRunEight
			adr		r0, chars8
			mov		r1, #0
			ldr		r2,[r0,r1]
			mov		r1, #4
			mov		r4, #1
			
loopNine
			add		r3, r2, r3
			lsl		r3, r3, #4
			ldr		r2,[r0,r1]
			add		r4,r4, #1
			cmp		r4, #11
			beq		EndRunNine
			b		loopNine
			
EndRunNine
			end
			
			
			
			
