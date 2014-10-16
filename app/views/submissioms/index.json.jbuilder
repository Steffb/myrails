json.array!(@submissioms) do |submissiom|
  json.extract! submissiom, :id, :title, :url
  json.url submissiom_url(submissiom, format: :json)
end
