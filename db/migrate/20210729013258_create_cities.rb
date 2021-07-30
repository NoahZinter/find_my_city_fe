class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :summary
      t.string :picture
      t.float :total_score

      t.timestamps
    end
  end
end
