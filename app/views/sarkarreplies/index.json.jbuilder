json.array!(@sarkarreplies) do |sarkarreply|
  json.extract! sarkarreply, :id, :reply
  json.url sarkarreply_url(sarkarreply, format: :json)
end
