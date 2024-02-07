class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.float :rating

      t.timestamps
    end
  end
end
