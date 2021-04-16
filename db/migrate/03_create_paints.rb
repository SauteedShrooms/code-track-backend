class CreatePaints < ActiveRecord::Migration[6.1]
  def change
    create_table :paints do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
