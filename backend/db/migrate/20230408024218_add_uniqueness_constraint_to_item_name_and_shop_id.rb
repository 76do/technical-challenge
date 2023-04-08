class AddUniquenessConstraintToItemNameAndShopId < ActiveRecord::Migration[7.0]
  def up
    add_index :items, [:title, :shop_id], unique: true
  end

  def down 
    remove_index :items, [:title, :shop_id], unique: true
  end
end
