# LAB3.asm by Ashley Schultz
# Last modified: 2/10/2026

	.data
rad_prompt: .asciiz "Input circle radius in millimeters: "
pi_prompt: .asciiz "Input value to use for pi: "
result_prompt: .asciiz "Resulting circle area (in millimeters squared): "

	.text 
main:	la	$a0, rad_prompt		# input_prompt as argument for print_string
	li	$v0, 4			# System call for print_string
	syscall
	li 	$v0, 5			# system call for read_int
	syscall
	move 	$t0, $v0		# get user input returned by read_int
	addi	$t2, $zero, 1		# Move 1 into $t2
	slt 	$t1, $t0, $t2		# Check if input is less then 1
	bne	$t1, $zero, Exit	# Exit if input is less then 1 
	la	$a0, pi_prompt		# load address of pi prompt
	li	$v0, 4			# system call for print_string
	syscall
	li 	$v0, 7			# system call for read_double
	syscall
	mov.d 	$f2, $f0		# move pi out of $f0
	mul	$t3, $t0, $t0		# int r_squared = pow(input, 2); // square input which is in $t0
	mtc1.d	$t3, $f4		# double r_squared_f = r_squared;
	cvt.d.w	$f4, $f4		# r_squared_f = (double) r_squared_f; // convert value in $f4 to double
	mul.d	$f6, $f4, $f2		# double area = pi * r_squared_f; // area in $f6, pi in $f2,
					# r_squared_f in $f4
	la	$a0, result_prompt	# load result prompt into argument to print_string
	li	$v0, 4			# System call for print_string
	syscall
	mov.d	$f12, $f6		# move area variable into argument for print_double
	li	$v0, 3			# System call for print_double
	syscall
	j	main			# Restart, we didn't get zero as input
Exit:	li   	$v0, 10          	# system call for exit
        syscall               		# we are out of here.
	
