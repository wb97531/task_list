json.array!(@doers) do |doer|
  json.extract! doer, :id, :name, :email, :password_digest
  json.url doer_url(doer, format: :json)
end
