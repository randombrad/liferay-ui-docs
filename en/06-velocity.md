# Velocity
Today's audience can choose from quite a large pool of web browsers, each providing a slightly (or dramatically) different experience. As developers, it is our responsibility to choose just how the web pages we build are displayed to those users. This section describes how we, at Isobar, make some of these key decisions.

## If/Else Statement
	#set($foo = 1)
	#if($foo == 1)
		Foo is equals 1
	#else
		Foo does not equal 1
	#end
	
Output: Foo is equals 1

	#set($var = 1)
	#set($foo == 2)
	#set($total = add($var,$foo))
	$total
	
Output: 3

## Math Functions
* add() - Addition 
* sub() - Subtraction
* mul() - Multiplication
* div() - Division
* pow() - Power of
* max() - Maximum of two numbers
* min() - Minimum of two numbers
* abs() - Absolute value of a number
* toDouble() - Converts a number into a double

----------------------


