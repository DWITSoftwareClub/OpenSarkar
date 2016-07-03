json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :title, :description
  json.url suggestion_url(suggestion, format: :json)
end
