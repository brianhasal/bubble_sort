numbers = [5, 2, 1, 3]

first = numbers[index]
second = numbers[index + 1]
length = numbers.length

# Define a boolean toggle, set it to TRUE
swapped = true								# 1

# ROUNDS BEGIN -----------------------------------------------------------------------------------------------------------------------------------

while swapped  								# 2t																 |# 36t															| # 60t															|# 79f
	# IMMEDIATELY set boolean to FALSE
	swapped = false 							# 3																 |	# 37														|		# 61														|
	index = 0											# 4																 |	# 38														|		# 62														|
	# If the IF statement never runs, boolean can never turn back to TRUE													
	(length - 1).times do 				# 5(1/3)		# 15(2/3)		 # 25(3/3) |	# 39(1/3)		# 49(2/3)		# 54		|		# 63(1/3)		# 68(2/3)		# 73		|		
		if first > second								# 6t				# 16t				# 26t	 |		# 40t				#50f				# 55f	|			# 64f				# 69f				# 74f	|
			temp = first 										# 7					# 17				# 27 |			# 41												|																		|
			first = second 									# 8					# 18				# 28 |			# 42												|																		|
			second = temp										# 9					# 19				# 29 |			# 43												|																		|
			swapped = true 									# 10				# 20				# 30 |			# 44												|																		|
			p numbers												# 11				# 21				# 31 |			# 45												|																		|
		end															# 12				# 22				# 32	 |		# 46				# 51				# 56	|			# 65				# 70				# 75	|
#		Index runs whether numbers swap or not												 |																	|																		|
		index = index + 1								# 13				# 23				# 33	 |		# 47				# 52				# 57	|			# 66				# 71				# 76	|
	end     											# 14				# 24				 # 34			 |	# 48				# 53				# 58		|		# 67				# 72				# 77		|
end															# 35															 |# 59															| # 78															|# 80
# ------------------------------------------------------------------------------------------------------------------------------------------------
p numbers

# 1  numbers is [5, 2, 1, 3], swapped is true
# 2  "
# 3  numbers is [5, 2, 1, 3], swapped is false
# 4  numbers is [5, 2, 1, 3], swapped is false, index is 0
# 5  "
# 6  "
# 7  numbers is [(5, 2), 1, 3], swapped is false, index is 0, temp = 5, first = 5, second = 2
# 8  numbers is [(2, 2), 1, 3], swapped is false, index is 0, temp = 5, first = 2, second = 2
# 9  numbers is [(2, 5), 1, 3], swapped is false, index is 0, temp = 5, first = 2, second = 5
# 10 numbers is [(2, 5), 1, 3], swapped is true,  index is 0, temp = 5, first = 2, second = 5
# 11 "
# 12 "
# 13 numbers is [2, 5, 1, 3], swapped is true,  index is 1, temp = 5, first = 2, second = 5
# 14 "
# 15 "
# 16 numbers is [2, (5, 1), 3], swapped is true,  index is 1, temp = 0, first = 5, second = 1
# 17 numbers is [2, (5, 1), 3], swapped is true,  index is 1, temp = 5, first = 5, second = 1
# 18 numbers is [2, (1, 1), 3], swapped is true,  index is 1, temp = 5, first = 1, second = 1
# 19 numbers is [2, (1, 5), 3], swapped is true,  index is 1, temp = 5, first = 1, second = 5
# 20 "
# 21 "
# 22 "
# 23 numbers is [2, 1, 5, 3], swapped is true,  index is 2, temp = -, first = -, second = -
# 24 "
# 25 "
# 26 numbers is [2, 1, (5, 3)], swapped is true,  index is 2, temp = 0, first = 5, second = 3
# 27 numbers is [2, 1, (5, 3)], swapped is true,  index is 2, temp = 5, first = 5, second = 3
# 28 numbers is [2, 1, (3, 3)], swapped is true,  index is 2, temp = 5, first = 3, second = 3
# 29 numbers is [2, 1, (3, 5)], swapped is true,  index is 2, temp = 5, first = 3, second = 5
# 30 "
# 31 "
# 32 "
# 33 numbers is [2, 1, 3, 5], swapped is true,  index is 3, temp = -, first = -, second = -
# 34 "
# 35 "
# 36 FULL ROUND RESET (PASSED)-------------------------------------------------------------------
# 37 numbers is [2, 1, 3, 5], swapped is false,  index is 3, temp = -, first = -, second = -
# 38 numbers is [2, 1, 3, 5], swapped is false,  index is 0, temp = -, first = -, second = -
# 39 "
# 40 numbers is [(2, 1), 3, 5], swapped is false,  index is 0, temp = -, first = 2, second = 1
# 41 numbers is [(2, 1), 3, 5], swapped is false,  index is 0, temp = 2, first = 2, second = 1
# 42 numbers is [(1, 1), 3, 5], swapped is false,  index is 0, temp = 2, first = 1, second = 1
# 43 numbers is [(1, 2), 3, 5], swapped is false,  index is 0, temp = 2, first = 1, second = 2
# 44 numbers is [(1, 2), 3, 5], swapped is true,  index is 0, temp = 2, first = 1, second = 2
# 45 "
# 46 "
# 47 numbers is [(1, 2), 3, 5], swapped is true,  index is 1, temp = -, first = -, second = -
# 48 "
# 49 "
# 50 numbers is [1, (2, 3), 5], swapped is true,  index is 1, temp = -, first = 2, second = 3
# 51 "
# 52 numbers is [1, (2, 3), 5], swapped is true,  index is 2, temp = -, first = 2, second = 3
# 53 "
# 54 "
# 55 numbers is [1, (2, 3), 5], swapped is true,  index is 2, temp = -, first = 3, second = 5
# 56 "
# 57 numbers is [1, (2, 3), 5], swapped is true,  index is 3, temp = -, first = 3, second = 5
# 58 "
# 59 "
# 60 FULL ROUND RESET (PASSED)-------------------------------------------------------------------
# 61 numbers is [1, 2, 3, 5], swapped is false,  index is 3
# 62 numbers is [1, 2, 3, 5], swapped is false,  index is 0
# 63 "
# 64 numbers is [1, 2, 3, 5], swapped is false,  index is 0 
# 65 "
# 66 numbers is [1, 2, 3, 5], swapped is false,  index is 1
# 67 "
# 68 "
# 69 "
# 70 "
# 71 numbers is [1, 2, 3, 5], swapped is false,  index is 2
# 72 "
# 73 "
# 74 "
# 75 "
# 76 numbers is [1, 2, 3, 5], swapped is false,  index is 3
# 77 "
# 78 "
# 79 FULL ROUND RESET (FAIL)---------------------------------------------------------------------
# 80 "











