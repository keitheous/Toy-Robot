# Scalability - maybe NE result in +i+j, SE result in +i-j, SW result in -i-j, NW result in -i+j MOVING HORIZONTALLY
# directions = ["NORTH", "EAST", "SOUTH", "WEST"]
# directions = ["N", "NE", "E", "SE", "S", "SW", "W", "NW"]

# index = -20
# if index > directions.length - 1
#  	answer = index / directions.length
#  	extended_key = answer * directions.length
#  	actual_key = index - extended_key
#  	index = actual_key
# elsif index < -(directions.length)
# 	answer = index.abs / directions.length
# 	extended_key = answer * directions.length
# 	actual_key = index + extended_key
# 	index = actual_key
# end

# directions[index]


# REFACTORING


# index = 9
# division = index.abs / directions.length
# numbers_in_between = division * directions.length

# if index > directions.length - 1
#  	index = index - numbers_in_between
# elsif index < -(directions.length)
# 	index = index + numbers_in_between
# end

# directions[index]


# REFACTORING


# directions = ["NORTH", "EAST", "SOUTH", "WEST"]
# directions = ["N", "NE", "E", "SE", "S", "SW", "W", "NW"]
#
# index = -24
#
# numbers_in_between = (index.abs / directions.length) * directions.length
#
# if index > directions.length - 1
#  	index = index - numbers_in_between
# elsif index < -(directions.length)
# 	index = index + numbers_in_between
# end
#
# directions[index]


# REFACTORING


# directions = ["N", "NE", "E", "SE", "S", "SW", "W", "NW"]
directions = ["NORTH", "EAST", "SOUTH", "WEST"]

# index = 0
# turn = 'left'

# if turn =='right'
# 	index += 1
# elsif turn == 'left'
# 	index -= 1
# else
# end

index = -4

numbers_in_between = (index.abs / directions.length) * directions.length

if index > directions.length - 1
 	index -= numbers_in_between
elsif index < -(directions.length)
	index += numbers_in_between
end

directions[index]
