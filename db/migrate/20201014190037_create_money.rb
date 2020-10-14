class CreateMoney < ActiveRecord::Migration[6.0]
  def change
    create_table :money do |t|
      t.integer :round
      t.integer :amount
      t.integer :user_id
      t.integer :vault_id
      t.string :date_deposited

      t.timestamps
    end
  end
end
