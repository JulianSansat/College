json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :publisher, :year, :User_id
  json.url book_url(book, format: :json)
end
