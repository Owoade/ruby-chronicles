string = "managed string"

print string.include? "managed";

print string.index("m");

print string[0, 3]






# Methods

def sayHello( name = "User" )
  puts name.to_s() + " says hello"
end

def addTwoNums( num1, num2)
  return (num1 + num2)
end

sayHello("bayo")
addTwoNums(3, 2)
