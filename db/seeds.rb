# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Profile.destroy_all

f = User.create!({:username => "Felix", :email => "ftrijk@gmail.com", :password => "password"})
t = User.create!({:username => "Thijmen", :email => "thijmenhoebink@hotmail.com", :password => "password"})
r = User.create!({:username => "randomchick", :email => "random@hotmail.com", :password => "password"})


felix = Profile.new(name: "Felix", age: 24, location: "Breda", user_id: f.id, description: "Ik ben een lekkere jongen uit breda op zoek naar actie")
felix_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485364448/nd0ctrcmltg5rnzyuesv.jpg"
felix.remote_photo_url = felix_photo_url
felix.save

thijmen = Profile.new(name: "Thijmen", age: 24, location: "Rotterdam", user_id: t.id, description: "een goedlachse jongeman van alle markten thuis")
thijmen_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383429/gsgl82bzigkh8k8lgynk.jpg"
thijmen.remote_photo_url = thijmen_photo_url
thijmen.save

randomchick = Profile.new(name: "Random chick", age: 28, location: "Amsterdam", user_id: r.id, description: "Na een gebroken hart ben ik weer klaar voor de datingwereld")
random_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485362968/aa6hj3mx0nnntjxmtpt1.jpg"
randomchick.remote_photo_url = random_photo_url
randomchick.save




# random_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485362968/aa6hj3mx0nnntjxmtpt1.jpg"
# randomchick = Profile.new(name: "Random chick", age: 28, location: "Amsterdam", description: "Na een gebroken hart ben ik weer klaar voor de datingwereld")
# randomchick.remote_photo_url = random_photo_url
# randomchick.save

# roel_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383365/qfjwkej0himcs9pi6yab.jpg"
# roel = Profile.new(name: "Roel de Jong", age: 24, location: "Breda", description: "gezellige boy uit het zuiden van het land")
# roel.remote_photo_url = roel_photo_url
# roel.save

# jake_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383418/wvdcombekica1vlhwgqs.jpg"
# jake = Profile.new(name: "Jake the Dog", age: 27, location: "adventureland", description: "ik ben een magische hond die kan praten")
# jake.remote_photo_url = jake_photo_url
# jake.save

# thijmen_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383429/gsgl82bzigkh8k8lgynk.jpg"
# thijmen = Profile.new(name: "Thijmen", age: 24, location: "Rotterdam", description: "een goedlachse jongeman van alle markten thuis")
# thijmen.remote_photo_url = thijmen_photo_url
# thijmen.save
