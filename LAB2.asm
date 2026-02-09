
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
proc_a:	la   $a0, prompt_len  # Load address of prompt into $a0
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
	sw   $s1, 0($sp)  # Save $s0 before calling another procedure
	sw   $ra, 4($sp) # Save return adress before calling another procedure
	addi $sp, $sp, 8# Prepare stack to push $s0, $s1, $s2, $ra
	jal proc_b	# Jump to process b
Exit:	addi $sp, $sp, -8 # Prepare stack to pop $s0, $s1, $s2, $ra
	lw   $s1, 0($sp)  # load $s1 before returning
	lw   $ra, 4($sp) # Load $ra before returning
	move $v0, $s1     # return size
	
	jr   $ra		# Return
	
########## Routine to invert the array, then calculate the average of the all elements of the array and desplays it and ret to poc_a
	.text
proc_b: move  $t0, $a0 # Move argument 1, array addr, out of $a0
	move  $t1, $a1 # move argument 2, size, out of $a1
	addi  $t3, $t1, -1 # Set t3 to size-1
	mov   $t9, $t3     # save size-1 to $t9
	mul   $t3, $t3, 4  # make size pointer math // $t3 is size_p
	move  $t4, $t0 # int *start_array = array; // start_array in $t4
	lw    $t5, ($t4) # temp = *start_array;
	add   $t6, $t0, $t3 # int *end_array = array + (size); // end_array in $t6, array in $t0
	lw    $t7, ($t6) # temp1 = *end_array // temp1 in $t7
### Loop to invert array
loop_1: sw    $t5, ($t6) # *end_array = temp;
	sw    $t7, ($t4) # *start_array = temp1
	addi  $t6, $t6, -4 # end_array--;
	addi  $t4, $t4, 4  # start_array++;
	lw    $t5, ($t4) # temp = *start_array:
	lw    $t7, ($t6) # temp1 = *end_array;
	slt   $t8, $t4, $t6 # if(start_array < end_array) $t8 = 1; else $t8 = 0;
	bne   $t8, $zero, loop_1 # if($t8 != 0) goto loop_1;
### End loop_1
	move  $t2, $zero # int sum = 0; // sum is in $t2
	add   $t6, $t0, $t3 # int *end_array = array + (size); // end_array in $t6, array in $t0
	move  $t4, $t0 # int *start_array = array; // start_array in $t4
### Loop to calc avg
loop_2: lw    $t5, ($t4) # int temp = *start_array; // temp in $t5, start_array in $t4
	add   $t2, $t2, $t5 # sum += temp
	addi  $t4, $t4, 4 # start_array++;
	slt   $t7, $t4, $t6 # if ( start_array < end_array) $t7 = 0; else $t7 = 1;
	bne   $t7, $zero, loop_2
### End loop_2
	div   $t2, $t2, $t1 # sum = sum / size; // sum in $t2, size in $t1
	move  $a0, $t2 #argument to print_int
	li    $v0, 1 # system call for print_int
	syscall
	move  $v0, $t3 # return size_p // size_p is in $t3
	jr    $ra   
