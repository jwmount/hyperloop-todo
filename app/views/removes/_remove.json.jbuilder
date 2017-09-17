json.extract! remove, :id, :organization, :created_at, :updated_at
json.url remove_url(remove, format: :json)
