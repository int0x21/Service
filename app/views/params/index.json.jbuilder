json.array!(@params) do |param|
  json.extract! param, :name, :value
  json.url param_url(param, format: :json)
end