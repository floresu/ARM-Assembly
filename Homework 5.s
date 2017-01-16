@ Homework 5
@ Problem 1
@ In this assignment, this program will count and display the number of times
@ a particular value [target] occurs in an internally stores list of integers.
@ Written by Uriel Flores 9/12/2016

			.data
			.align
array:		.word	5, 7, 13, 67, 56, 7, 7, 7, 34, 12, 0, 7, 7, 45, 100
arraySize:	.word	15
target:		.word	7
			.text
			.global	_begin

_begin:
			ldr	r0, =array 			@ Loads the array
			ldr	r1, =arraySize 		@ Gets the arraySize array 
			ldr	r1, [r1]			@ Gets the count from arraySize
			ldr	r5, =target			@ Loads the target integer
			ldr	r5, [r5]			@ Target gets initialized
			mov r9, #0				@ Loads the count from the arraySize to r5
			mov	r8, #0				@ i = 0 is initialized

findint:
			cmp	r8, r1 				@ While (i < arraySize)
			bge	done				@ done
			ldr	r7, [r0]			@ Gets the arraySize[1]
			cmp	r7, r5				@ Compare the integer in r7 and r5
			beq	valueint			@ Breaks equal loop
			b 	findint1 			@ Break loop

valueint:
			add r3, r3, #1 			@ Increment i

findint1:
			add r8, r8, #1 			@ Increment 1
			add	r0, r0, #4 			@ Increment the pointer
			b 	findint 			@ Break loop back to findint

done:
			mov r0, #1 				@ Required to print
			mov	r1, r3				@ Moving r3 to r1
			swi	0x6b				@ Print
			swi	0x11 