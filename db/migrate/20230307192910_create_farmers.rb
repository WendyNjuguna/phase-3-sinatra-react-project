class CreateFarmers < ActiveRecord::Migration[6.1]
        def change
          create_table :farmers do |t|
          t.string :name
          t.string :email
          t.string :contact
          t.string :goods
          t.string :password_digest
          end
        end
      end

# rake db:rollback
# rake db:migrate
# rake db:seed