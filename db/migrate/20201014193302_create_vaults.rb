class CreateVaults < ActiveRecord::Migration[6.0]
  def change
    create_table :vaults do |t|
      t.integer :round
      t.integer :user_id      # the user whose turn it is to make the withdrawal from the vault
      t.integer :total_amount
      t.string :user_to_withdraw

      t.timestamps
    end
  end
end
