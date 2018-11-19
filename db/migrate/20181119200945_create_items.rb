class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :iname
      t.text :description
      t.integer :stock
      t.string :image
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
