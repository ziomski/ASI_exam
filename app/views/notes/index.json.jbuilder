json.array!(@notes) do |note|
  json.extract! note, :id, :priority, :title, :description
  json.url note_url(note, format: :json)
end
