class CreateShops < ActiveRecord::Migration[7.0]
  def up 
    create_table :shops do |t|
      t.string :name, null: false

      t.timestamps
    end
  end

  def down
    drop_table :shops
  end
end
