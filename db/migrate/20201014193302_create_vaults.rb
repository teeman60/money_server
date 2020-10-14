class CreateVaults < ActiveRecord::Migration[6.0]
  def change
    create_table :vaults do |t|
      t.integer :round
      t.integer :user_id
      t.integer :total_amount

      t.timestamps
    end
  end
end
