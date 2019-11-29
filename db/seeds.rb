# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
t = [0.25, 0.50, 0.75, 1, 1.25]

Transaction.destroy_all
Book.destroy_all
User.destroy_all

u = User.new(last_name: 'Belet', first_name: 'Alexandre', address: "167 rue paradis, marseille", email: "alexandre@test.fr")
x = 'password'
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
  b.price_per_day = t.sample
  b.name = Faker::Book.title
  b.author = Faker::Book.author
  b.category = rand(5)
  b.user = u
  url = "https://us.123rf.com/450wm/dp3010/dp30101612/dp3010161200001/69538838-couverture-de-livre-noir-et-cuir-dor%C3%A9.jpg?ver=6"
  b.remote_photo_url = url
  b.save!
end

u = User.new(last_name: 'Borgna', first_name: 'Marc', address: "40 Boulevard Baille, Marseille 6e Arrondissement, Provence-Alpes-Côte d'Azur, France", email: "marc@test.fr")
x = 'password'
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
  b.price_per_day = t.sample
  b.name = Faker::Book.title
  b.author = Faker::Book.author
  b.category = rand(5)
  b.user = u
  url = "https://us.123rf.com/450wm/dp3010/dp30101612/dp3010161200001/69538838-couverture-de-livre-noir-et-cuir-dor%C3%A9.jpg?ver=6"
  b.remote_photo_url = url
  b.save!
end

u = User.new(last_name: 'Tounsi', first_name: 'Mohamed', address: "4 Boulevard Louis Salvator, Marseille 6e Arrondissement, Provence-Alpes-Côte d'Azur, France", email: "mohamed@test.fr")
x = 'password'
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
  b.price_per_day = t.sample
  b.name = Faker::Book.title
  b.author = Faker::Book.author
  b.category = rand(5)
  b.user = u
  url = "https://us.123rf.com/450wm/dp3010/dp30101612/dp3010161200001/69538838-couverture-de-livre-noir-et-cuir-dor%C3%A9.jpg?ver=6"
  b.remote_photo_url = url
  b.save!
end

