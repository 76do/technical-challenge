class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.integer :status, null: false
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
