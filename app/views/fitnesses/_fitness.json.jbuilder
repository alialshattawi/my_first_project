json.extract! fitness, :id, :name, :address, :phone_number, :latitude, :longitude, :created_at, :updated_at
json.url fitness_url(fitness, format: :json)