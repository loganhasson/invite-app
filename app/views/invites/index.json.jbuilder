json.array!(@invites) do |invite|
  json.extract! invite, :event_id, :accepted
  json.url invite_url(invite, format: :json)
end
