json.array!(@categories) do |category|
  json.extract! category, :name, :book_id
  json.url category_url(category, format: :json)
end
