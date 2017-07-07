class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :comment, null: false, default: ""
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
