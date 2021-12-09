json.extract! recipe, :id, :name, :description, :yield, :active_time, :total_time, :image_url, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
