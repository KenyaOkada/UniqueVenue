class CreateUniquevenues < ActiveRecord::Migration[5.1]
  def change
    create_table :uniquevenues do |t|
      t.string :uniquevenue_name
      t.string :uniquevenue_description
      t.string :inquiry
      t.string :adress
      t.string :price
      t.string :holding_space
      t.string :people
      t.string :parking
      t.string :access

      t.timestamps
    end
  end
end
