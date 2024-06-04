json.extract! image, :id, :name, :description, :url, :tags, :created_at, :updated_at
json.url image_url(image, format: :json)
