class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.integer :farmer_id
      t.integer :investor_id
      t.integer :amount
      t.timestamps
    end
  end
end
