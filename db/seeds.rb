# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all
Guest.create(name: "Felix de Rijk", age: 24, location: "Breda", description: "Ik ben een lekkere jongen uit breda op zoek naar actie")
Guest.create(name: "Random chick", age: 28, location: "Amsterdam", description: "Na een gebroken hart ben ik weer klaar voor de datingwereld")
Guest.create(name: "Roel de Jong", age: 24, location: "Breda", description: "gezellige boy uit het zuiden van het land")
Guest.create(name: "Jake the Dog", age: 27, location: "adventureland", description: "ik ben een magische hond die kan praten")
Guest.create(name: "Thijmen", age: 24, location: "Rotterdam", description: "een goedlachse jongeman van alle markten thuis")
