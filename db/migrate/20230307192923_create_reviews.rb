class CreateReviews < ActiveRecord::Migration[6.1]
  def change
        create_table :reviews do |t|
          t.belongs_to :investor, index: true
          t.integer :rating
          t.string :comment
          t.timestamps
    end
  end
end
