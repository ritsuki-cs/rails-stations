# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

movies = Movie.create([
  {
    name: "Star Wars",
    year: "1977",
    description: "スターウォーズシリーズの第1作",
    image_url: "https://picsum.photos/200/300",
    is_showing: false,
  },
  {
    name: "アバター　ウェイ・オブ・ウォーター",
    year: "2022",
    description: "映画「アバター」の続編",
    image_url: "https://picsum.photos/200/300",
    is_showing: true,
  },
])

fakeMovies = []
for i in 1..10 do
  fakeMovies.push({
    name: "映画#{i}",
    year: "2018",
    description: "全米が泣いたアクション映画。主演はトレーイン・テックでボウル監督がメガホンを取った",
    image_url: "https://picsum.photos/200/300",
    is_showing: true,
  })
end

fakeMovies = Movie.create(fakeMovies)
