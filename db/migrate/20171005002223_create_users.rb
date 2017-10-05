class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :browser
      t.string :thekey

      t.timestamps
    end
    add_index :users, :thekey
  end
end
