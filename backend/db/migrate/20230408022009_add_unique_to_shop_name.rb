class AddUniqueToShopName < ActiveRecord::Migration[7.0]
  def up
    add_index :shops, :name, unique: true
  end

  def down 
    remove_index :shops, :name, unique: true
  end
end
