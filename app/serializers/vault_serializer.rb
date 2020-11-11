class VaultSerializer
  include FastJsonapi::ObjectSerializer
  attributes :round, :user_id, :total_amount, :user_to_withdraw
end
