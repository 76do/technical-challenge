class AddUniquenessConstraintToVariationsItemIdColorSize < ActiveRecord::Migration[7.0]
  def up
    add_index :variations, [:color, :size, :item_id], unique: true
  end

  def down
    remove_index :variations, [:color, :size, :item_id], unique: true
  end
end
