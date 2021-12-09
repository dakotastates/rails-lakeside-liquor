class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :ingredient
      t.text :note
      t.text :description

      t.timestamps
    end
  end
end
