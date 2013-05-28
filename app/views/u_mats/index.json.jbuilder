json.array!(@u_mats) do |u_mat|
  json.extract! u_mat, :PULAGER_ID, :PULAGER_Name, :unit_ID
  json.url u_mat_url(u_mat, format: :json)
end