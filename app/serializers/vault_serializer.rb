class VaultSerializer

    include FastJsonapi::ObjectSerializer
    attributes :round, :total_amount, :user_to_withdraw


end