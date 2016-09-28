json.array!(@notebooks) do |notebook|
  json.extract! notebook, :id
  json.url notebook_url(notebook, format: :json)
end
