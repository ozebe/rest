class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :description
      t.integer :price
      t.integer :timeprep

      t.timestamps
    end
  end
end
