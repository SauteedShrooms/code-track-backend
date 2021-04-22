class CreateWheels < ActiveRecord::Migration[6.1]
  def change
    create_table :wheels do |t|
      t.string :partType
      t.string :name
      t.string :image
      t.integer :speed
      t.integer :efficency
      t.integer :power

      t.timestamps
    end
  end
end
