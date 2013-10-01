json.array!(@codes) do |code|
  json.extract! code, 
  json.url code_url(code, format: :json)
end
