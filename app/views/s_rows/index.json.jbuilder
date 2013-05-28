json.array!(@s_rows) do |s_row|
  json.extract! s_row, :rma_ID, :ttest, :tprod, :tmech, :tprot, :warranty, :action, :PULAGER_ID, :artname
  json.url s_row_url(s_row, format: :json)
end