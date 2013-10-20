class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.string :title
      t.references :User

      t.timestamps
    end
    add_index :buckets, :User_id
  end
end
