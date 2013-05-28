json.array!(@u_notes) do |u_note|
  json.extract! u_note, :note, :user
  json.url u_note_url(u_note, format: :json)
end