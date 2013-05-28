json.array!(@rma_notes) do |rma_note|
  json.extract! rma_note, :note, :user
  json.url rma_note_url(rma_note, format: :json)
end