json.array!(@contatos) do |contato|
  json.extract! contato, :id, :name, :email, :tel, :img, :User_id
  json.url contato_url(contato, format: :json)
end
