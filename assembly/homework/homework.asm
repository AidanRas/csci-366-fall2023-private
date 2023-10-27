//==========================================================================================
// PROBLEM 1: Counting Up From 1 to 10 in Little Man Assembly
//==========================================================================================

LOOP    LDA NUM
        OUT
        ADD ONE
        STA NUM
        SUB TEN
        BRP EXIT
        ADD TEN
        BRA LOOP
EXIT    HLT
ONE     DAT 1
TEN     DAT 11
NUM     DAT 1

// You can develop your code via the online emulator and then paste it in here
// Please use a jump in your solution
// Please use the OUT instruction to print values

//==========================================================================================
// PROBLEM 2: Counting Up From 1 to 10 in MIPS Assembly
//==========================================================================================

.text

li $t0, 1
li $t1, 11
loop:
	li $v0, 1
	move $a0, $t0
	syscall
	addi  $t0, $t0, 1
	bgt  $t1, $t0 , loop

	li $v0, 10
	syscall

// You can develop your code via the MARS emulator and then paste it in here
// Please use a jump in your solution
// Please use sys-calls to output the value