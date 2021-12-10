class AddLevelIdToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :level_id, :integer
  end
end
