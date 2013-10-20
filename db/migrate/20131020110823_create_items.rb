class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :model
      t.integer :price
      t.integer :quantity
      t.references :bucket

      t.timestamps
    end
    add_index :items, :bucket_id
  end
end
