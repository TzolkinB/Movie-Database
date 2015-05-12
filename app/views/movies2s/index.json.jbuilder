json.array!(@movies2s) do |movies2|
  json.extract! movies2, :id, :name, :description, :genre_id, :actor_id
  json.url movies2_url(movies2, format: :json)
end
