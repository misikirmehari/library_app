json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :phone, :email, :account_number
  json.url customer_url(customer, format: :json)
end
