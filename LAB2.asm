
       .data 0x10010400
array: .word
	.text
	jal proc_a
        li   $v0, 10          # system call for exit
        syscall               # we are out of here.
	
########## Routine to prompt user for size of array, then prompts the user to store inputted integers into that array
       .data 0x10010000
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
	la   $a0, array # First argument to proc_a, pointer to array start
	move $a1, $s1	# second argument to proc_b, size of array
	jal proc_b	# Jump to process b
Exit:	addi $sp, $sp, 16# Prepare stack to push $s0, $s1, $s2
	la   $s0, 0($sp)  # Save $s0 before syscalls
	la   $s1, 4($sp)  # Save $s1 before syscalls
	la   $s2, 8($sp)  # load $s2 before syscalls
	la   $ra, 12($sp) # Load $ra before returning
	jr   $ra		# Return
	
########## Routine to invert the array, then calculate the average of the all elements of the array and desplays it and ret to poc_a
       .data

	.text
proc_b: move  $t0, $a0 # Move argument 1 out of $a0
	move  $t1, $a1 # move argument 2 out of $a1
	addi  $t3, $t1, -1 # Set t3 to size - 1
	move  $t4, $t1 # int *start_array = array;
	lw    $t5, ($t4) # temp = *start_array;
	add   $t0, $t0, $t3 # int *end_array = array + (size - 1);
loop_1: sw    $t5, ($t0) # *end_array = temp;
	addi  $t0, $t0, -4 # end_array--;
	addi  $t3, $t3, 4  # start_array++;
	lw    $t5, ($t3) # temp = *start_array:
	
	
	

	
