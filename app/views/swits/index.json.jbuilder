json.array!(@swits) do |swit|
  json.extract! swit, :id, :content, :user_id
  json.url swit_url(swit, format: :json)
end
