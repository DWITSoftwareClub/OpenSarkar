json.array!(@replycomments) do |replycomment|
  json.extract! replycomment, :id, :comment
  json.url replycomment_url(replycomment, format: :json)
end
