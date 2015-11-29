require_relative '../classes/user.rb'




johnCena = User.create(name: "John Cena",email:"johncena@johncena.com",password:'johncena')

johnCena.update(name:"Giovanni Dinner")

puts johnCena.inspect
