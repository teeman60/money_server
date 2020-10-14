class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :SSN
      t.integer :total_deposited
      t.integer :total_withdrawn

      t.timestamps
    end
  end
end
