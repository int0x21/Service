json.array!(@rmas) do |rma|
  json.extract! rma, :PUFIRMA_ID, :PUFIRADR_AID, :status, :user, :ttest, :tprod, :tmech, :tprot, :warranty, :action
  json.url rma_url(rma, format: :json)
end