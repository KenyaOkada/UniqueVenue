class CreateUniquevenueImages < ActiveRecord::Migration[5.1]
  def change
    create_table :uniquevenue_images do |t|
      t.integer :uniquevenue_id
      t.binary :image

      t.timestamps
    end
  end
end
