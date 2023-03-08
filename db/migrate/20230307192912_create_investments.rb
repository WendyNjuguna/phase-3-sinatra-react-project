class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.integer :amount
      t.timestamps
    end
  end
end
