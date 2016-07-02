json.array!(@problems) do |problem|
  json.extract! problem, :id, :Title, :Description
  json.url problem_url(problem, format: :json)
end
