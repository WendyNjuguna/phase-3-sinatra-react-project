class CreateInvestors < ActiveRecord::Migration[6.1]
  def change
        create_table :investors do |t|
          t.string :firstname
          t.string :lastname
          t.string :username
          t.string :email
          # t.string :password_digest
          t.timestamps
    end
    
  end
end
