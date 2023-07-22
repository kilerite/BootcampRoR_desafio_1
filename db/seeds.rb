require 'faker'

# Crear 10 clientes ficticios
10.times do
  Client.create(
    avatar: Faker::Avatar.image,
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Crear 10 películas ficticias
10.times do
  Movie.create(
    image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['movie']),
    name: Faker::Movie.title
  )
end

# Asignar películas arrendadas a clientes de forma aleatoria
Client.all.each do |client|
  2.times do
    Rental.create(
      client: client,
      movie: Movie.all.sample
    )
  end
end
