class DelAttribToUser < ActiveRecord::Migration
  def self.down
  	remove_column :lname, :fname
  end
end
