class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :passwordconf
      t.boolean :admin
      t.string :shipaddr

      t.timestamps
    end
  end
end
