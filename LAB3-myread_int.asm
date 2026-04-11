# LAB3-myread_int.asm by Ashley Schultz
# Last modified: 2/17/2026

	.data
end_key:		.byte	0x0a
	.align 2
base_ascii:		.ascii	"0"
	.align 2
key_buffer:		.byte
	.data 0xFFFF0000
receiver_control: 	.word
	.data 0xFFFF0004
receiver_data:		.word

	.text 
main:	la	$t2, key_buffer			# Load the key buffer address
	addi	$t5, $zero, 0			# Create counter for number of characters
loop:	lw	$t0, receiver_control		# Load reciever controller into $t0
	and	$t0, 0x1			# Mask out bit0 from reciever controller
	beq	$t0, $zero, loop		# Poll if the ready bit is zero
	lw	$t1, receiver_data		# Load reciever data into $t1
	and	$t1, 0xff			# Mask out the least significate byte with the ASCII
						# code from the keyboard input
	lb	$t3, end_key			# Load ending key (return(0x0a) into $t3
	and	$t3, 0xff			# mask out anything in $t3
	beq	$t3, $t1, sloop2		# Escape loop if user hit enter 
	sb	$t1, ($t2)			# Store ascii key into buffer
	addi	$t2, $t2, 1			# point to next byte in the buffer
	addi	$t5, $t5, 1			# count number of inputted chars
	j	loop				# Loop if user has not inputted return
sloop2:	addi	$t6, $zero, 0			# initialize pointer to first key in buffer
	addi	$t8, $zero, 0			# initialize sum
	lb	$t7, base_ascii			# load base ascii code
	addi	$t0, $zero, 1			# set $t1 to the first digit
	addi	$t2, $t2, -1			# Move pointer to the next code in buffer
loop_2:	lb 	$t4, ($t2)			# Load key_buffer
	sub	$t4, $t4, $t7			# Subtract inputted ascii code by base ascii code
	mul	$t4, $t4, $t0			# multiply the code by the current digit
	add	$t8, $t4, $t8			# add converted value to sum
	addi	$t6, $t6, 1			# Add counter, point to next code in buffer
	mul	$t0, $t0, 10			# multiply by 10 to move to next digit
	addi	$t2, $t2, -1			# Move pointer to the next code in buffer
	bne	$t6, $t5, loop_2		# loop over each code in buffer
	move	$v0, $t8			# move sum return register
	jar $ra						# return to caller
