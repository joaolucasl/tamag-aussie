require_relative '../models/user.rb'
require_relative '../models/pet.rb'



# Creating dummy user 1
steveJobs = User.create(name: "Steve Job",email:"jobs@apple.com",password:'steveJobs')
steveJobs.update(:name=>"Steve Jobs")


# Creating dummy user 2
billGates = User.create(name: "Bill Gates",email:"gates@microsoft.com",password:'microsoft')
billGates.update(:email=>"bill.gates@microsoft.com")




billsIbis = Pet.create(
  species: "Ibis",
  name:"JoJo",
  health:100,
  intelligence: 100,
  happiness: 100,
  hunger: 0,
  coins: 200,
  homeLat: "-27.47866115443499",
  homeLong: "153.02886846475303",
  user_id: billGates.id
  )

jobsWallaby = Pet.create(species:'Wallaby')
jobsWallaby.current = Location.new(-27.4667, 153.0333);
jobsWallaby.update_weather

jobsWallaby.print_stats

billsIbis.current = Location.new(-27.4667, 153.0333);
billsIbis.update_weather

billsIbis.print_stats

