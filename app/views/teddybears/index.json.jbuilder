json.array!(@teddybears) do |teddybear|
  json.extract! teddybear, :id, :name, :email
  json.url teddybear_url(teddybear, format: :json)
end
