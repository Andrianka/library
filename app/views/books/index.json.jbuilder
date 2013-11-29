json.array!(@books) do |book|
  json.extract! book, :title, :author, :quantity, :code, :category_id
  json.url book_url(book, format: :json)
end
