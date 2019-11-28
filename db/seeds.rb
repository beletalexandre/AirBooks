# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Transaction.destroy_all
Book.destroy_all
User.destroy_all
10.times do
  u = User.new()
  u.email = Faker::Internet.email
  u.first_name = Faker::name
  u.last_name = Faker::name
  x= 'password'
  u.password = x
  u.password_confirmation = x

resource_type = "image"
type = "upload"
version = "v1574953206"
public_id = "dbvzxjrge"
format = "jpg"
signature = Cloudinary::Utils.api_sign_request({:public_id=>public_id,
:version=>version}, Cloudinary.config.api_secret)
avatar = "#{resource_type}/#{type}/v#{version}/#{public_id}.#{format}##
{signature}"





  u.save!
  puts u
  5.times do
    b = Book.new()
    b.price_per_day = Faker::Number.decimal_part(digits: 2)
    b.name = Faker::Book.title
    b.author = Faker::Book.author
    b.category = rand(5)
    b.user = u
    url = "https://us.123rf.com/450wm/dp3010/dp30101612/dp3010161200001/69538838-couverture-de-livre-noir-et-cuir-dor%C3%A9.jpg?ver=6"
    b.remote_photo_url = url
    b.save!
  end
end
