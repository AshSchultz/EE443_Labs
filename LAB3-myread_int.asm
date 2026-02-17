# LAB3-myread_int.asm by Ashley Schultz
# Last modified: 2/17/2026

	.data 0xFFFF0000
receiver_control: 	.word
	.data 0xFFFF0004
receiver_data:		.word

	.text 
main:	lw	$t0, receiver_data		# Load reciever data into $t0
	and	$t0, 0x1			# Mask out bit0 from reciever data
	bne	$t0, $zero, main		# Poll if the ready bit is zero	