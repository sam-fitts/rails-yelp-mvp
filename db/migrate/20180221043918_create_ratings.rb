class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.text :content
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
