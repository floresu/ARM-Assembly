@ Homework 4
@ In this assignment, we want to determine which of the two 
@ equal length integer arrays has the greater sum.
@ Written by Uriel Flores and implemented by Mikey G's example program to
@ illustrate loop iteration 9/7/2016

				.data
				.align
count:	.word	10
list1:	.word	2, 4, 6, 8, 10, 12, 14, 16, 18, 20
list2:	.word	1, 3, 5, 7, 9, 11, 13, 15, 17, 19
				.text
				.global	_start
_start:
				ldr	r0, =list1					@ Loads the array
				ldr	r1, =count					@ Gets the count array
				ldr	r1, [r1]					@ Gets the count from the count

array:
				mov	r9, #0						@ Sum of the list1
				mov	r8, #0						@ i = 0 is initialized
				ldr	r5, =list2
				mov	r6, #0						@ j = 0 is initialized
				mov	r3, #0						@ Sum of list 2

loop:
				cmp	r8, r1						@ While (i < arraySize)
				bge	loop
				ldr	r7, r[0]					@ Get list1[i]
				add	r9, r9, r7					@ Sum = sum + list1[i]
				add	r0, r0, #4					@ increment array pointer
				add r8, r8, #1 					@ i is incrimented
				b 	loop

done:
				cmp	r9, r3						@ Comparing the sums of list1 and list2
				bgt	bigger1						@ bigger1 prints out the sum of r9

bigger2:
				mov	r1, r3						@ Moving r3 to r1 to print
				mov	r0, #1 						@ Requirement for printing
				swi	0x6b 						@ Print
				swi	0x11

bigger1:
				mov	r1, r9						@ Moving r9 to r1 to print
				mov	r0, #1 						@ Requirement to print
				swi	0x6b						@ Print
				swi	0x11
