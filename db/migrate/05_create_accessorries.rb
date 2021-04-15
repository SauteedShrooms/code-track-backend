class CreateAccessorries < ActiveRecord::Migration[6.1]
  def change
    create_table :accessorries do |t|
      t.string :name
      t.integer :speed
      t.integer :efficency
      t.integer :power

      t.timestamps
    end
  end
end
