class CreateFavorite < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :city_name
      t.string :state
      t.string :summary
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true
      t.float :total_score
      t.integer :population
      t.text :categories_hash_array

      t.timestamps
    end
  end
end
