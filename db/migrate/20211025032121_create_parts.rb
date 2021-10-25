class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.decimal :price
      t.string :og_website
      t.boolean :ships

      t.timestamps
    end
  end
end
