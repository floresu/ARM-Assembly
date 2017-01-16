@ Homework 3 with extra credit
@ Written by uriel Flores 9/15/2016

	.data
	.align
numbers:
	.word 84, 100, 17, 6, 11
	.text
	.global		_begin
_begin

	ldr	r7, =numbers			@ Load the array
	ldr	r0,	[r7, #0]
	ldr	r1, [r7, #4]
	ldr	r2,	[r7, #8]
	ldr	r3.	[r7, #12]
	ldr	r4, [r7, #16]


	add	r0, r0, r0				@ Double all values
	add	r1, r1, r1
	add r2, r2, r2
	add	r3, r3, r3
	add	r4, r4, r4

	str	r0,	[r7, #0]			@ Stores the double in the original place
	str	r1, [r7, #4]
	str	r2,	[r7, #8]
	str	r3.	[r7, #12]
	str	r4, [r7, #16]

	add	r0, r0, r1				@ Adds total sum to r0
	add	r0, r0, r2
	add r0, r0, r3
	add	r0, r0, r4

	mov	r1, r0
	mov	r0, #1 					@ Moves value to r1 to print

	swi	0x6b 					@ Prints the total amount
	swi	0x11 
