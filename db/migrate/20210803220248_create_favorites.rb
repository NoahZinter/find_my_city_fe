class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :city_id
      t.string :city
      t.string :state
      t.string :summary
      t.float :total_score
      t.text :categories_hash_array

      t.timestamps
    end
  end
end
