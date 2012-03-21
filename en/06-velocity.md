# Velocity
Today's audience can choose from quite a large pool of web browsers, each providing a slightly (or dramatically) different experience. As developers, it is our responsibility to choose just how the web pages we build are displayed to those users. This section describes how we, at Isobar, make some of these key decisions.

## If/Else Statement
	#set ($foo = 1)
	#if ($foo == 1)
		Foo is equals 1
	#else
		Foo does not equal 1
	#end
	
Output: Foo is equals 1

	#set ($var = 1)
	#set ($foo == 2)
	#set ($total = add($var,$foo))
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

## For Loop
Display each of the items that are stored in $nav_items array

	#foreach ($nav_item in $nav_items)
		$nav_item.data
	#end

### $VelocityCount
displays the index of the for loop that its nested within. This variable starts at 1

	#foreach ($nav_item in $nav_items)
		#if($velocityCount == 1)
			This is the first item of the list
		#end
	#end


### $VelocityHasNext
This variable is a boolean that returns true/false if the current iteration has a next sibling.

	#foreach ($nav_item in $nav_items)
		#if(!$velocityHasNext)
			This is the last item of the list
		#end
	#end
	
### Web Content Template Files
Limited Access. There isn't direct access to $nav_items

### Theme Template Files

	- templates
		- init_custom.vm
		- navigation.vm
		- portal_normal.vm

### Accessing LocalService



----------------------


