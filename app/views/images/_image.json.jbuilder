json.extract! image, :id, :image, :tags, :description, :created_at, :updated_at
json.url image_url(image, format: :json)
