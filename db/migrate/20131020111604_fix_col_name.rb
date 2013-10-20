class FixColName < ActiveRecord::Migration
  def self.up
  	rename_column :buckets, :User_id, :user_id
  end

  def self.down
  end
end
