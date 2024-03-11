class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.integer :hp, null: false
      t.integer :attack, null: false

      t.timestamps
    end
  end
end
