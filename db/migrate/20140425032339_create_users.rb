class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lname
      t.string :fname
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
