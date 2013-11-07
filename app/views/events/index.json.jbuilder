json.array!(@events) do |event|
  json.extract! event, :name, :date, :time
  json.url event_url(event, format: :json)
end
