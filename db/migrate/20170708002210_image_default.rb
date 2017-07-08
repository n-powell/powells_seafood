class ImageDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:products, :image, "crab.jpg")
  end
end
