# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.destroy_all
felix_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485364448/nd0ctrcmltg5rnzyuesv.jpg"
felix = Profile.new(name: "Felix de Rijk", age: 24, location: "Breda", description: "Ik ben een lekkere jongen uit breda op zoek naar actie")
felix.remote_photo_url = felix_photo_url
felix.save

u1 = User.create!({:email => "ftrijk@gmail.com", :roles => ["admin"], :password => "password", :password_confirmation => "password" })

random_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485362968/aa6hj3mx0nnntjxmtpt1.jpg"
randomchick = Profile.new(name: "Random chick", age: 28, location: "Amsterdam", description: "Na een gebroken hart ben ik weer klaar voor de datingwereld")
randomchick.remote_photo_url = random_photo_url
randomchick.save

roel_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383365/qfjwkej0himcs9pi6yab.jpg"
roel = Profile.new(name: "Roel de Jong", age: 24, location: "Breda", description: "gezellige boy uit het zuiden van het land")
roel.remote_photo_url = roel_photo_url
roel.save

jake_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383418/wvdcombekica1vlhwgqs.jpg"
jake = Profile.new(name: "Jake the Dog", age: 27, location: "adventureland", description: "ik ben een magische hond die kan praten")
jake.remote_photo_url = jake_photo_url
jake.save

thijmen_photo_url = "http://res.cloudinary.com/dpacrtp2n/image/upload/v1485383429/gsgl82bzigkh8k8lgynk.jpg"
thijmen = Profile.new(name: "Thijmen", age: 24, location: "Rotterdam", description: "een goedlachse jongeman van alle markten thuis")
thijmen.remote_photo_url = thijmen_photo_url
thijmen.save
