class CreateSushiRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :sushi_rolls do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.string :spicy, default: "None"
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
