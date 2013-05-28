json.array!(@r_mats) do |r_mat|
  json.extract! r_mat, :PULAGER_ID, :PULAGER_Name, :SRow_ID
  json.url r_mat_url(r_mat, format: :json)
end