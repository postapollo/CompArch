	
	.text 
grid:
	move	$t0, $a0
#*******ROW 1*********
	la 	$a0, Row1	#load "Game Options:\t\t-------------\t\tDisplay Options:\n"
	li 	$v0, 4
	syscall				#Print String
	
#************ROW 2**********
	la 	$a0, gridRowTwoLeft	#load "0 - Stop this Game.\t| "
	li 	$v0, 4
	syscall				#Print String
	
	li	$v0, 11
	lb	$a0, 0($t0)		#load the FIRST letter
	syscall				#print a character
	
	la	$a0, pipeCommand	#load " | "
	li	$v0, 4
	syscall 			#print a String
	
	li	$v0, 11
	lb	$a0, 1($t0)		#load the SECOND letter
	syscall				#print Character
	
	la	$a0, pipeCommand	#load " | "
	li	$v0, 4
	syscall				#print String
	
	li	$v0, 11			
	lb	$a0, 2($t0)		#load the THIRD letter
	syscall				#Print A character
	
	la	$a0, EndofRow2		# loads " |\t\t2 - Display time/n"
	li	$v0, 4
	syscall				#print String
	
#***********ROW 3**************
	la	$a0, Row3	# loads "1 - Move the Letters\t|-----------|\t\t3 - Display Correct Words/n"
	li	$v0, 4
	syscall				#print String
#*************ROW $************
	la	$a0, BeginingOfRow4and6	#loads "\t\t\t| "
	li $v0, 4
	syscall				#print String
	
	li	$v0, 11
	lb	$a0, 3($t0)		#load the FOURTH letter
	syscall				#print a character
	
	la	$a0, pipeCommand	#load " | "
	li	$v0, 4
	syscall 			#print a String
	
	li	$v0, 11
	lb	$a0, 4($t0)		#load the FIFTH letter
	syscall				#print Character
	
	la	$a0, pipeCommand	#load " | "
	li	$v0, 4
	syscall				#print String
	
	li	$v0, 11			
	lb	$a0, 5($t0)		#load the SIXTH letter
	syscall				#print Character
	
	la	$a0, endOfRow4	#loads " |\t\tDisplay Instructions\n"
	li	$v0, 4
	syscall				#print String
#************ROW 5****************
	la	$a0, Row5		#loads "\t\t\t|-----------|/n"
	li	$v0, 4
	syscall	
#************ROW 6****************
	la	$a0, BeginingOfRow4and6	#loads "\t\t\t| "
	li $v0, 4
	syscall				#print String
	
	li	$v0, 11
	lb	$a0, 6($t0)		#load the SEVENTH letter
	syscall				#print a character
	
	la	$a0, pipeCommand	#load " | "
	li	$v0, 4
	syscall 			#print a String
	
	li	$v0, 11
	lb	$a0, 7($t0)		#load the EIGHTH letter
	syscall				#print Character
	
	la	$a0, pipeCommand	#load " | "
	li	$v0, 4
	syscall				#print String
	
	li	$v0, 11			
	lb	$a0, 8($t0)		#load the NINTH letter
	syscall				#print Character
	
	la	$a0, endOfRow6	#loads " |\n"
	li	$v0, 4
	syscall				#print String
#************ROW 6****************
	la	$a0, Row7	#loads "\t\t\t-------------\n"
	li	$v0, 4
	syscall
	
	jr	$ra

	
