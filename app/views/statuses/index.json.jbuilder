json.array!(@statuses) do |status|
  json.extract! status, :id, :nombre, :contenido
  json.url status_url(status, format: :json)
end
