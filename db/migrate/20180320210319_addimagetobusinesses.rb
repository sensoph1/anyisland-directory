class Addimagetobusinesses < ActiveRecord::Migration[5.1]
  def up
    add_column :businesses, :image, :string
  end

  def down
    remove_column :businesses, :image, :string
  end
end
