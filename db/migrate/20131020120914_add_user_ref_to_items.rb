class AddUserRefToItems < ActiveRecord::Migration
  def change
    #add_column :items, :User, :references
    change_table :items do |p|
    	p.references :user, index: true
  	end
  end
end
