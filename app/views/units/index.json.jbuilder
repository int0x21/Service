json.array!(@units) do |unit|
  json.extract! unit, :SRow_ID, :rma_ID, :ttest, :tprod, :tmech, :tprot, :warranty, :action, :PULAGER_ID, :artname
  json.url unit_url(unit, format: :json)
end