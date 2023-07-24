class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.text :name
      t.float :price
      t.text :ref
      t.boolean :warranty
      t.integer :duration

      t.timestamps
    end
  end
end
