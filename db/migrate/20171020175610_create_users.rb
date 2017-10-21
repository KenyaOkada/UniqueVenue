class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.integer :gender
      t.string :user_name

      t.timestamps
    end
  end
end
