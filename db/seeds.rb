# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user1 = User.create(first_name: "Dani", last_name: "Rigsby", username: "drigs09", password: "danrigs09", email: "drigsby@hotmail.com", image_url: "image.com")

@user2 = User.create(first_name: "Colette", last_name: "Speer", username: "coco", password: "coco", email: "coco@coco.com", image_url: "image.com")

@interest1 = Interest.create(title: "things", description: "stuff")

@tour = Tour.create(local_id: @user1.id, name: "My Tour", interest_id: @interest1.id, description: "Stuff and things")



