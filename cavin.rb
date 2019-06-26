# 1. Basic Concepts

puts "Hello World"
print "Hello World"

puts "Hi" # puts: automatically adds a new line after the output
print "there"
print "Ruby"

=begin
  This comment
  spans multiple
  lines
=end
puts "Hello"

x=8 # variable name CANNOT begin with a capital letter or a number
puts x

MyNum = 42 # constants: variables beginning with a capital letter <- CANNOT be changed!
puts MyNum
MyNum = 8
puts MyNum # warning!

x = 42 # integer
y = 1.58 # floating point value
z = "Hello" # string

age = 42
puts "He is #{age} years old"

x = 5
y = 2

puts x+y
puts x-y
puts x*y
puts x/y

puts x%y # modulus operator
puts x**y # exponent operator

x,y,z = 10,20,30 # parallel assignment
puts x,y,z

x = (3+2)*4
puts x

text = 'Ruby\'s syntax is fun' # backslash(\): escape sequence
puts text
text = "Hello \n World" # double quotation!
puts text

a,b = 5,2
puts "The sum is #{a+b}"
a,b = "Hello ","World"
puts a+b

a = "abc"
puts a*3
puts '5'*4

x = gets
puts x

puts "Enter your name: "
name = gets # this includes new line!
puts ("Hello, " + name)
puts ("Hello, " + name + ", you are cool") # new line!

puts "Enter your name: "
name = gets.chomp # exclude the new line!!
puts ("Hello, " + name + ", you are cool")

puts "Enter your name: "
name = gets.chomp # exclude the new line!!
puts "Enter your age: "
age = gets.to_i
puts "Hello, #{name}, you're #{age} years old"
puts ("Hello, " + name + ", you are " + age.to_s + " years old")

=begin
.to_i <- integer
.to_f <- float
.to_s <- string
.to_a <- array
.to_r <- 0.5.to_r = 1/2
.to_h <- hash
.to_c <- complex number
=end





# 2. Control Structures
isOnline = true
userIsAdmin = false # falsey
userIsAdmin2 = nil # falsey <- cf. 0: truthy
puts userIsAdmin
puts userIsAdmin2

a = 5
b = 8
puts a==b
puts a==5
puts a!=b

puts 12>8
puts 5<2
puts 5>=5.0
puts 3<=6

puts 3==3.0
puts 3.eql?(3.0) # false!(.eql? method: both same type and equal values)

a = 42
if a>7
  puts "Yes"
  if a<=42
    puts "btw 7 & 42"
  end
else
  puts "No"
end

age = 15
if age>18
  puts "Welcome"
elsif age>=15
  puts "Wait a second"
else
  puts "Too young"
end

a = 42
unless a<10
  puts "Yes"
else
  puts "No"
end

a = 42
puts "Yes" if a>10 # more concise!
puts "Yes" unless a<10

a = 42
b = 8
if a>7 && b>11
  puts "Yes"
elsif a>7 || b>11
  puts "Not bad"
end

a = 7
puts !(a>5) # reverse the state!

a = 2
case a
when 1
  puts "Class S"
when 2,3
  puts "Class A"
when 4,5
  puts "Class B"
else
  puts "Re-write your number"
end

x = 0
while x<10
  puts x
  x+=1
end

a = 0
until a>10 # opposite of while!!!
  puts "a=#{a}"
  a+=1
end

a = (1..7).to_a # to_a: convert range to array
b = (79...82).to_a # ... <- the last element is excluded
c = ("a".."d").to_a
print a,b,c

age = 29
case age
when 1..10
  puts "Kid"
when 11..20
  puts "Teenager"
when 21..30
  puts "Young man"
else
  puts "Adult"
end

for i in (1..10)
  puts i
end

for i in 1..5
  break if i>3
  puts i
end

for i in 0..10
  next if i%2==0
  puts i
end

x = 0
loop do
  puts x
  x+=1
  break if x>10 # without a break condition, the loop will run forever!
end





# 3. Collections
items = ["Apple","Orange","Banana"]
puts items[0]
items[1] = "Kiwi"
print items

arr = [5,"Dave",15.88,false]
puts arr[0]
puts arr[1]
puts arr[-1]

arr = [5,"Dave",15.88,false]
arr << 8 # add an element to the end
print arr

arr = [5,"Dave",15.88,false]
arr.push(8) # add an element to the end
print arr

arr = [5,"Dave",15.88,false]
arr.insert(2,8) # insert the element at the desired position
print arr

arr = [1,2,3]
arr.pop
print arr # remove the last element

arr = [2,4,6,8]
arr.delete_at(2) # specify the index to be removed
print arr

nums = [6,3,8,7,9]
print nums[1..3]

a = [1,2,3]
b = [4,5]
res = a+b
print res # [1, 2, 3, 4, 5]

a = [1,2,3,4,5]
b = [2,4,5,6]
res = a-b
print res # minus set
print a*3 # duplicated

a = [2,3,7,8]
b = [2,7,9]
print a&b # intersection
print a|b # union

arr = [5,3,8]
res = arr.reverse # if not save it to a new variable, it'll just reverse once and keep the original value!
print res

arr = [1,2,3]
print arr.reverse!

arr = ["a","b","c","c"]
for x in arr
  puts "Value: #{x}"
end
puts arr.length # the number of elements
puts arr.size
puts arr.sort
puts arr.uniq # return a new array without duplicate values
puts arr.uniq! # remove duplicates
puts arr.include?("a") # boolean: returns true if present in array, false otherwise
puts arr.include?("d")
puts arr.min
puts arr.max
arr.freeze # safeguards the array(preventing it from being modified)

# Hashes
ages = {"David"=>28, "Amy"=>19, ["Rob",1]=>42, ["Rob",2]=>32} # key=>value
puts ages["Amy"]
puts ages[["Rob",2]]

# Symbols
a = :id # similar to strings, but unchangable // symbols save both time and memory!
h = {:name=>"Dave", :age=>28, :gender=>"male"}
puts h[:age]
h = {name:"Dave", age:28, gender:"male"} # shorter way <- key:value
puts h[:age]

car = {brand:"BMW", year:2016, color:"red", length:205}
car.delete(:length) # remove key-value pairs by key
puts car.key(2016) # return key for the given value
puts car.invert # keys become values, and values become keys
puts car.keys
puts car.values
puts car.length # integer

arr = [[1,2,3],[4,5,6]] # nested array
puts arr[1][2]

cars = {bmw:{year:2016,color:"red"}, mercedes:{year:2012,color:"black"}, porsche:{year:2014,color:"white"}}
puts cars[:bmw][:color]

# Iterators: used to create loops
arr = [2,4,6]
arr.each do |x| # loops through all elements of the array and assigns them to the pipe variable(x)
  puts x
end

arr = [2,4,6]
sum = 0
arr.each do |x| # array
  sum += x
end
puts sum

sizes = {svga:800, hd:1366, uhd:3840}
sizes.each do |key,value| # hash 
  puts "#{key}=>#{value}"
end

sizes = {svga:800, hd:1366, uhd:3840}
sizes.each{|key,value| puts "#{key}=>#{value}"} # shorthand way

10.times do
  puts "Hi"
end

text = "I am learning Ruby and it is fun!"
text.downcase! # convert all letters to lowercase
# Letter Frequency
freqs = {}
freqs.default = 0 # set default value
text.each_char{|char| freqs[char]+=1} # frequency is incremented in the freqs hash
("a".."z").each{|x| puts "#{x}:#{freqs[x]}"} # print frequencies in an alphabetical order





# 4. Methods
def say # void
  puts "Hi"
end
say
say()

def sqr(x) # parameter
  puts x*x
end
sqr(3)

def sum(a,b)
  puts a+b
end
sum(7,8)

def sum(a,b,c)
  puts a+b+c
end
x,y,z = 2,4,6
sum(x,y,z)

def sum(a,b=8) # default parameter
  puts a+b
end
x=5
sum(x)

def sum x,y # leave off the parentheses
  puts x+y
end
sum 6,9

def greet(name="")
  if name==""
    puts "Greetings!"
  else
    puts "Welcome, #{name}"
  end
end
greet(gets.chomp) # prompt the user to enter

def someMethod(*p) # take any number of arguments
  puts p
end
someMethod(25, "hello", true)

def myMethod(a,b,*c)
  puts a+b
  puts c
end
myMethod(1,2,3,4,5,6,7)

def sum(a,b) # returning value
  res = a+b
  return res
end
x = sum(5,23)
puts(x)

def squares(a,b,c)
  return a*a, b*b, c*c
end
arr = squares(2,3,6)
print(arr)

def demo(a,b) # always returns the result even when the "return" statement is not explicitly included
  a=b-2
  b=a-3
end
puts demo(5,6)

def square(x)
  x*x
end
square(4).times{puts "Hi"}

def add(a,b) a+b end
def mult(a,b) a*b end
puts mult(add(2,3),add(4,7)) # methods as arguments

def calc(x)
  y = 2 # local variable: can't be accessed outside of the loop or method
  puts x*y
end
puts calc(3)
puts y # error!

$x = 41 # global variable: accessible from anywhere <- not recommended!(visible and changable anywhere => hard to find bugs)
def change
  $x = 8
end
change
puts $x

# Recursion
def fact(n)
  if n<=1
    1
  else
    n*fact(n-1)
  end
end
puts fact(5)

def fibo(n)
  if n<2
    n
  else
    fibo(n-1)+fibo(n-2)
  end
end
puts(fibo(4))





# 5. Object Oriented Programming
class Person
  def initialize
    puts "Hi there"
  end
end
p1 = Person.new # each object calls the initialize method! => returns output
p2 = Person.new

class Person
  @age = 0
  def initialize(name,age)
    @name = name # instance variable <- each object has a seperate copy of the instance variables
    @age = age
  end
  def printout()
    puts "#{@name} is #{@age} years old." # Don't forget "@"!!!
  end
end
p1 = Person.new("David",21)
p2 = Person.new("Amy",22)
p1.printout()
p2.printout

class Person
  def initialize(name)
    @name = name
  end
  def get_name # accessor
    @name
  end
  def set_name=(name) # setter: followed by "="
    @name = name
  end
end
p = Person.new("David")
puts p.get_name # accessor
p.set_name = "Bob" # setter <- not "p.set_name("Bob")"!
puts p.get_name

# In common, the same name is used for the getter and setter
class Person
  def initialize(name)
    @name = name
  end
  def name # accessor
    @name
  end
  def name=(name) # setter: followed by "="
    @name = name
  end
end
p = Person.new("David")
puts p.name # accessor
p.name = "Bob" # setter
puts p.name

class Person
  attr_accessor :name, :height, :weight # to create getter and setter more easily!
  def initialize(name,height,weight)
    @name, @height, @weight = name, height, weight
  end
end
p = Person.new("David", 180, 62)
p.name = "Bob"
puts "#{p.name} has #{p.height}cm and #{p.weight}kg"

class Person
  attr_accessor :name, :age
  def initialize(name,age)
    @name, @age = name, age
  end
  def change(n,a) # change the instance variables via accessor methods
    self.name = n
    self.age = a
  end
  def show_info
    puts "#{name} is #{age} years old"
  end
end
p = Person.new("David",28)
p.change("Bob",42) # modify the values by accessor method instead of setter
p.show_info

class Person
  def self.info # class method <- called directly without instantiating any objects!
    puts "A Person"
  end
end
Person.info

class Person
  @@count = 0 # class variable <- accessible to every object <- provide info about the class itself, not the individual objects
  def initialize
    @@count += 1 # keep count of all objects created
  end
  def self.get_count # class method
    @@count
  end
end
p1 = Person.new
p2 = Person.new
puts Person.get_count

class Calc
  PI = 3.14
end
puts Calc::PI # class constant

class Person
end
p = Person.new
puts p # output the info of the object
puts p.to_s # to_s method is printed by default!

class Person
  def initialize(n,a)
    @name, @age = n, a
  end
  def to_s # you can define to_s by yourself!
    "#{@name} is #{@age} years old"
  end
end
p = Person.new("David", 28)
puts p

# Inheritance
class Animal
  def initialize(name, color)
    @name, @color = name, color
  end
  def speak
    puts "Hi"
  end
end

class Dog < Animal # inheritance
  attr_accessor :age
  def speak # overriding
    puts "Bark"
  end
end
d = Dog.new("Bob","brown")
d.age = 2
d.speak

class Animal
  def speak
    puts "Hi"
  end
end

class Dog < Animal # inharitance
  def speak # overriding
    super # inherit aspects of superclass
    puts "Bark"
  end
end
d = Dog.new
d.speak # output both superclass and subclass

class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal # inheritance
  def initialize(name, age)
    super(name) # inherit the variable of superclass <- to remove duplicate code!
    @age = age
  end
  def to_s
    "#{@name} is #{@age} years old"
  end
end
d = Dog.new("Bob",3)
puts d

class Shape
  attr_accessor :h, :w
  def initialize(h,w)
    self.h, self.w = h,w
  end
  def +(other) # overloading <- ex. adding two objects together
    Shape.new(self.h+other.h, self.w+other.w)
  end
  def *(ob) # overloading <- multiplication
    Shape.new(self.h*ob.h, self.w*ob.w)
  end
end
a = Shape.new(7,4)
b = Shape.new(9,18)
c = a+b
d = a*b
puts c.h, c.w, d.h, d.w

class Person
  def initialize(age)
    @age = age
  end
  def show
    puts "#{@age} years = #{@days_lived} days"
  end

  private
  def days_lived # private method <- accessible only from inside the class <- you can't call it explicitly!
    @age*365
  end
end
p = Person.new(42)
p.show

class Product
  attr_accessor :name, :num
  def initialize(name, num)
    @name, @num = name, num
  end
  def ==(other) # overloading
    self.id == other.id
  end
  protected # if private, you'll get an error! // not accessible from outside code, but can be called for an object of the same class or subclasses
  def id
    name.length*num
  end
end
p1 = Product.new("PC",5)
p2 = Product.new("Laptop",3)
puts(p1==p2)



# Simple Game
class Player
  attr_accessor :name, :health, :power
  def initialize(n,h,pow)
    @name,@health,@power=n,h,pow
  end
  def isAlive # show whether the player is still alive
    @health>0
  end
  def hit(opponent) # decrease the opponent's health by the amount of player's power
    opponent.health -= self.power
  end
  def to_s # output the player info
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(p1,p2) # use a loop to make the players hit each other until isAlive returns false for one of them
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)
    show_info(p1,p2)
  end
  if p1.isAlive
    puts "#{p1.name} WON!"
  elsif p2.isAlive
    puts "#{p2.name} WON!"
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each{|x| puts x}
end

#initialize Players
puts "PLAYERS INFO"
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1,p2)

puts "LETS FIGHT!"
fight(p1,p2)





# 6. Modules, Mixins, Standard Classes
## class inheritance: "is-a" relationship
## modules: "has-a" relationship <- ex. A plane "is a" vehicle; a plane "has an" ability to fly
## you CANNOT instantiate modules(objects can't be created from modules)
module Flyable # module: collection of methods <- "~able"
  def fly
    puts "I'm flying!"
  end
end

module Transportable
  def transport
    puts "All passengers should tighten their seat belts!"
  end
end

class Vehicle
end

class Car < Vehicle
end

class Jet < Vehicle # inherit from the Vehicle class, and can fly
  include Flyable
end

class Plane < Vehicle
  include Flyable
  include Transportable # can mix in multiple modules, while not allow to inherit from multiple classes => mixin!
end
ob = Plane.new # cf. modules CANNOT be instantiated!
ob.fly
ob.transport

# Mixins
class Cat
  attr_accessor :name, :age
  include Comparable # mixin
  def initialize(n,a)
    self.name = n
    self.age = a
  end
  def <=>(other) # make objects comparable!(<,<=,==,>=, and >)
    self.age <=> other.age
  end
end
c1 = Cat.new("Bob",3)
c2 = Cat.new("Lucy",7)
puts c1<c2

# Namespacing
module Mammal # namespacing: organise similar classes in a module => use modules to group related classes => easy to recognise related classes in the codes!
  class Dog
    def speak
      puts "Woof!"
    end
  end

  class Cat
    def speak
      puts "Meow"
    end
  end
end
a = Mammal::Dog.new # module::class.new
b = Mammal::Cat.new
a.speak
b.speak

module MyMath
  PI = 3.14
  def self.square(x) # class method
    x*x
  end
  def self.negate(x)
    -x
  end
  def self.factorial(x)
    (1..x).inject(:*) || 1
  end
end
puts MyMath.factorial(8) # method of standard classes: you can also use "::"

# Structs
Point = Struct.new(:x, :y) # shortcut to define two attribute accessors // automatically create its initialize method
origin = Point.new(0,0) # you can use it just like a class!
dest = Point.new(15,42)
puts dest.y

# OStruct(OpenStruct)
require "ostruct"
person = OpenStruct.new # OStruct is not as fast as Struct, but more flexible to define any number of attributes
person.name = "John"
person.age = 42
person.salary = 250
puts person.name

require "ostruct"
person = OpenStruct.new(name:"John", age:42, salary:250) # initialize an Ostruct using a hash
puts person.name

# Math
puts Math.sqrt(9)
puts Math::PI
puts Math::cos(0)

# Time
t = Time.now # current time
puts t

puts t.year
puts t.month
puts t.day

t = Time.new(1988,6,10) # custom date

puts t.wday # day of week: 0 is Sunday
puts t.yday # day of year

# Procs
greet = Proc.new do |x| # similar to methods // flexible to be reused!
  puts "Welcome #{x}"
end
greet.call "David"
greet.call "Amy"

greet = Proc.new do |x| # proc
  puts "Welcome #{x}"
end

goodbye = Proc.new do |x| # proc
  puts "Goodbye #{x}"
end

def say(arr, proc) # method
  arr.each {|x| proc.call x}
end
people = ["David", "Amy", "John"]
say(people, greet) # procs' main forte: can be pass them into methods because procs are actually objects!(reusable)
say(people, goodbye)

def calc(proc) # methos that takes a proc as its parameter
  start = Time.now
  proc.call
  dur = Time.now - start
end

someProc = Proc.new do
  num = 0
  1000000.times do
    num += 1
  end
end
puts calc(someProc) # calculate the execution time of Ruby codes!

# Lambdas
talk = lambda {puts "Hi"} # lambda is a variation of Procs!
talk = ->() {puts "Hi"} # alternative way
talk.call

# Comparison b/w Procs and Lambdas
talk = lambda {|x| puts "Hello #{x}"}
talk_proc = Proc.new {|x| puts "Hello #{x}"}

talk.call "David"
talk_proc.call "Amy"
talk.call # error! <- lambdas check the number of arguments
talk_proc.call # procs are more flexible on the number of arguments(if no arguments, automatically defaults to nil)





# 7. Working with Files
