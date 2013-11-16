json.array!(@mixes) do |mix|
  json.extract! mix, :title, :body, :profile_id, :spotify_url
  json.url mix_url(mix, format: :json)
end
