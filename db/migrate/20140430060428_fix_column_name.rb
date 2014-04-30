class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :comments, :post_id, :swit_id
  end
end
