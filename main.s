.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	nop

        //
        //mov
        //
        mov r0, #100
        mov r1, #101
        mov r2, #102

        //
        //push
        //
        push {r0, r1, r2}

        //
        //pop
        //
        pop {r3, r4, r5}

        //
        //push
        //
        push {r2, r0, r1}

        //
        //pop
        //
        pop {r6, r7, r8}


	//
     	//branch w/o link
	//
	b	label01

label01:
	nop

	//
	//branch w/ link
	//
	bl	sleep

sleep:
	nop
	b	.
