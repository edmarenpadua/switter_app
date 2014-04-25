class CreateSwits < ActiveRecord::Migration
  def change
    create_table :swits do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
