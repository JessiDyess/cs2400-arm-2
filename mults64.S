		;		ARM Programming Assignment #2: 64 bit signed integer multiplier
		;
		;		Write a 64-bit SIGNED multiplier. It should take only a small modification to your
		;       unsigned version. Remember (-6)*(-6) = 36, (-6)*6 = -36.
		;		Use the standard shift-and-add operation.
		;		Use the two numbers as an example but write it so it works for any two 16-bit numbers.
		;       Note that in VisUAL you cannot store 64-bit values (double words) directly. The upper
		;       and lower words are your higher 32 bits and lower 32 bits of the two numbers,
		;       respectively.
		;		Write the result in the provided "fill" word.
		;		Indicate if there was a high-bit carry using the provided "fill" word.

		;		Your code here

upper	DCD		0xA0BCFF0D, 0xFFF0ADEA
lower	DCD		0xFFF1AD2A, 0xA0ACEF0D
result	FILL		16
carry	FILL		4
		adr		r0, numbers
		mov		r1, #0
		ldr		r2,[r0,r1]
		mov		r1, #4
		ldr		r3,[r0,r1]
		mov		r4, #0
		mov		r5, #64
loop
		and		r6, r3, #1
		cmp		r6, #0
		
		
break
		mov		r2,r2, lsl #1
		sub		r5, r5, #1
		cmp		r5, #0
		beq		finsihed
		b		loop
		
		
finsihed
		end
		
,r2
		b		then
