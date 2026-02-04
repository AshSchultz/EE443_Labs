
       .data 0x10010400
array: .word
	.text
	jal proc_a
        li   $v0, 10          # system call for exit
        syscall               # we are out of here.
	
########## Routine to prompt user for size of array, then prompts the user to store inputted integers into that array
       .data
prompt_len: .asciiz "Input length of array: "
prompt_ints: .asciiz "Input next integer in array: "

	.text
proc_a:	addi $sp, $sp, -16# Prepare stack to push $s0, $s1, $s2
	sw   $s0, 0($sp)  # Save $s0 before calling another procedure
	sw   $s1, 4($sp)  # Save $s1 before calling another procedure
	sw   $s2, 8($sp)  # Save $s2 before calling another procedure
	sw   $ra, 12($sp) # Save return adress before calling another procedure
	la   $a0, prompt_len  # Load address of prompt into $a0
	li   $v0, 4	# System call for print_str
	syscall
	li   $v0, 5	# System call for read_int, $v0 will now have result
	syscall
	move $s1, $v0   # move return value out of v0
     	slti $s0, $s1, 0# input >= 1
     	bne  $s0, $zero, Exit # if less then 1, exit
     	la   $s2, array # $s2 = &array[0]
     	move $s0, $zero	# int i = 0;
loop:	la   $a0, prompt_ints  # Load address of prompt into $a0
	li   $v0, 4	# System call for print_str
	syscall
	li   $v0, 5	# System call for read_int
	syscall
	sw   $v0, ($s2)# Save inputted value into array[i]
	addi $s2, $s2, 4# move pointer to next location in memory to store input
	addi $s0, $s0, 1# i++;
	slt  $t2, $s0, $s1# if(i<size)
	bne  $t2, $zero, loop# then loop
	jal proc_b	# Jump to process b
Exit:	addi $sp, $sp, 16# Prepare stack to push $s0, $s1, $s2
	la   $s0, 0($sp)  # Save $s0 before syscalls
	la   $s1, 4($sp)  # Save $s1 before syscalls
	la   $s2, 8($sp)  # load $s2 before syscalls
	la   $ra, 12($sp) # Load $ra before returning
	jr $ra		# Return
	
########## Routine to prompt user for size of array, then prompts the user to store inputted integers into that array
       .data

	.text
proc_b:	