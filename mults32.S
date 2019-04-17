		;		ARM Programming Assignment #2: 32 bit signed integer multiplier
		;
		;		Write a 32-bit SIGNED multiplier. It should take only a small modification to your
		;       unsigned version. Remember (-6)*(-6) = 36, (-6)*6 = -36.
		;		Use the standard shift-and-add operation.
		;		Use the two numbers as an example but write it so it works for any two 16-bit numbers.
		;		Write the result in the provided "fill" word.
		;		Indicate if there was a high-bit carry using the provided "fill" word.

		;		Your code here

numbers	DCD		0xA0BCFF0D, 0xFFF0ADEA
result	FILL		8
carry	FILL		4
		adr		r0, numbers
		mov		r1, #0
		ldr		r2,[r0,r1]
		mov		r1, #4
		ldr		r3,[r0,r1]
		mov		r4, #0
		mov		r5, #1
		mov		r6, #16
		mov		r7, #0
loop
		and		r7, r3, r5
		cmp		r7, #0
		beq		mustAdd
		
then
		mov		r2,r2, lsl #1
		mov		r3,r3,asr #1
		sub		r6, r6, #1
		cmp		r6, #0
		beq		exitLoop
		b		loop
		
exitLoop
		end
		
		
mustAdd
		add		r4,r4,r2
		b		then
