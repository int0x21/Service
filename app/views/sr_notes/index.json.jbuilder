json.array!(@sr_notes) do |sr_note|
  json.extract! sr_note, :note, :user
  json.url sr_note_url(sr_note, format: :json)
end