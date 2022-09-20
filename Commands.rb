puts "Hola"
puts "Adios"
print "Luis"
print "Manuel"
character_name="Carlos"
age =75
decimal =0.45
flaws = nil  # No value
puts("Hola "+character_name.upcase())
puts character_name.downcase()

puts "Enter your name: "
name = gets.chomp() ## Quita el salto de linea y lo convierte a numero
puts ("Hello "+name+" you are cool")

friends = Array["kevin","Karen","Oscar"]
puts friends[0,2]
friends =Array.new
friends[0]="Luis"
friends[2]="Martes"
puts friends

states = {"Colombia"=>"CO",1=>"PA"}
puts states
puts states["Colombia"]

def sayhi(name,age)
    mensaje = ("Hello user "+name)
    return mensaje, age**3
end
a=sayhi("Luis",2)
puts a[0]
puts a[1]