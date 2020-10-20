class MoneySerializer

    include FastJsonapi::ObjectSerializer
    attributes :round, :amount, :vault_id, :date_deposited


end