"Evaluating 1 + 1" println
(1 + 1) println
"" println

"Attempting to evaluate 1 + \"one\"" println
exception := try(1 + "one")

# Io is strongly typed because the above raised an exception
# It expected the argument for the + message to be a Number, not a Sequence
exception error println
"" println

# 0 is truthy
if(0 and true) then("0 is truthy" println)
"" println

# An empty string is truthy
if("" and true) then("\"\" is truthy" println)
"" println

# nil is falsey
if(nil and true) else("nil is falsey" println)
"" println

# How can you tell what slots a prototype supports?
"The slots for Object are:" println
Object slotNames println
"" println

# What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
"Attempting to assign with x = 1" println
exception := try(x = 1)
exception error println
"= can only be used to assign a value to an existing slot" println
"" println

"Assigning to a new slot with y := 1" println
y := 1
"y is #{y}" interpolate println
"" println

"Assigning to a new slot with y = 2" println
"y is #{y}" interpolate println
"" println

"Assigning to a new slot and a setter with z ::= 1" println
z ::= 1
"z is #{z}" interpolate println
"Setting z with setZ(2)" println
setZ(2)
"z is #{z}" interpolate println
"" println

# Execute the code in a slot given its name
X := Object clone

# assign the method to a slot on the X object
X greet := method("Hello" println)

# call the method
X greet

# call the method given its name as a string
X getSlot("greet") call
