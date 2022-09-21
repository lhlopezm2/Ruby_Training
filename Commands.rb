=begin
    Date:           20th September 2022
    Content:        Notes about Ruby Path
    Description:    In this file we find the syntaxis of the basic commands required in Ruby
    Author:         Luis Humberto Lopez Murillo
    Mentor:         Juan David Gaviria
=end

# ------------------------Interacting with Ruby
puts "Hola"
puts "Adios"
print "Luis"
print "Manuel"

# ------------------------Strings
character_name="Carlos"
age =75
decimal =0.45
flaws = nil  # No value
puts("Hola "+character_name.upcase())
puts character_name.downcase()

# ------------------------Input Data
puts "Enter your name: "
name = gets.chomp() ## Quita el salto de linea y lo convierte a numero
puts ("Hello "+name+" you are cool")


# ------------------------Arrays
friends = Array["kevin","Karen","Oscar"]
puts friends[0,2]
friends =Array.new
friends[0]="Luis"
friends[2]="Martes"
puts friends

# ------------------------Hashes
states = {"Colombia"=>"CO",1=>"PA"}
puts states
puts states["Colombia"]

# ------------------------Functions
def sayhi(name,age)
    mensaje = ("Hello user "+name)
    return mensaje, age**3
end
a=sayhi("Luis",2)
puts a[0]
puts a[1]


# ------------------------If statements
ismale = false
istall = false
if ismale and istall
    puts "You are male and tall"
elsif ismale and !istall
    puts "You are a short male"
else
    puts "You either not male or not tall"
end


# ------------------------Case Statements
day="mon"
case day
when "mon"
    day_name = "Monday"
when "tue"
    day_name="Tuesday"
else
    day_name = "invalid"
end

puts day_name


# ------------------------While Loop
index=1
while index <=5
    puts index
    index+=1
    if index ==8
        break
    end
end

# ------------------------For Loops
friends = ["Kevin","Karen","Oscar","Angela","Andy"]
for friend in friends
    puts friend
end

friends.each do |friend|
    puts friend
end

for index in 0..5
    puts index
end

6.times do |index|
    puts index
end


# ------------------------Files Reading
File.open("employees.txt","r") do |file|
    #puts file.read()
    #puts file.readline() # It is a parser for each line ... one by one
    #puts file.readchar() # It is a parser for each character .. one by one
    for line in file.readlines()  # devuelve un array
        puts line
    end
    
end

#r+ overwrite the current position of the cursor through .readchar and .readline
# w-mode overwrite and create
# a stands for append
File.open("employees.txt","a") do |file| 
    file.write("\nOscar, Accounting")
end

# ------------------------Handling Errors and Exceptions
begin
    num=10/0
rescue
    puts "Division by zero error"
end

lucky_nums=[4,5,6,7,8]
begin
    lucky_nums["dog"]
    num=10/0
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError
    "Wrong Type"
end

lucky_num=[4,5,6,7,8]
begin
    lucky_nums["dog"]
    num=10/0
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError => e
    puts e
end

# ------------------------Classes and Objects
class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major,gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honors
        if @gpa>=3.5
            return true
        end
        return false
    end
end

student1 = Student.new("Jim","Business",2.6)
puts student1.has_honors

# ------------------------Inheritance
class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    def make_salad
        puts "The chef makes salad"
    end

end

class ItalianChef < Chef
    # This is a subclass from Chef
    def make_special_dish
        puts "The chef makes  eggplant parm"
    end
    # I can override, and create new methods (extending functionality)
end

chef = Chef.new()
chef.make_chicken
italian_chef = ItalianChef.new()
italian_chef.make_salad


# ------------------------Modules    It doesn't run. It says that the functions are private
#require_relative "useful_tools.rb"
#include Tools
#Tools.sayhi("mike")
