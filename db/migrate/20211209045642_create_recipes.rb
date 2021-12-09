class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.string :yield
      t.string :active_time
      t.string :total_time
      t.string :image_url

      t.timestamps
    end
  end
end
