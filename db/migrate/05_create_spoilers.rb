class CreateSpoilers < ActiveRecord::Migration[6.1]
  def change
    create_table :spoilers do |t|
      t.string :name
      t.string :image
      t.integer :speed
      t.integer :efficency
      t.integer :power

      t.timestamps
    end
  end
end
