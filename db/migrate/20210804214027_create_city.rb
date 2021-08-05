class CreateCity < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city
      t.string :state
      t.string :summary
      t.float :total_score
      t.integer :population
      t.text :categories_hash_array

      t.timestamps
    end
  end
end
