class MoneySerializer
  include FastJsonapi::ObjectSerializer
  attributes :round, :amount, :user_id, :vault_id, :date_deposited
end
