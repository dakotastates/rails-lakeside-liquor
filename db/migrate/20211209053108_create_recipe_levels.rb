class CreateRecipeLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_levels do |t|
      t.references :level, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
