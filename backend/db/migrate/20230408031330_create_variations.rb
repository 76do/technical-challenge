class CreateVariations < ActiveRecord::Migration[7.0]
  def up
    create_table :variations do |t|
      t.integer :color, null: false
      t.integer :size, null: false
      t.integer :stock, null: false
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :variations
  end
end
