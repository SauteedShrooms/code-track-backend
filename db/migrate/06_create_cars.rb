class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.references :body, null: false, foreign_key: true
      t.references :paint, null: false, foreign_key: true
      t.references :wheel, null: false, foreign_key: true
      t.references :accessorry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
