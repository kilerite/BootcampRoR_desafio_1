json.extract! movie, :id, :image, :name, :created_at, :updated_at
json.url movie_url(movie, format: :json)
