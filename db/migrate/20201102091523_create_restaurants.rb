class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string        :restaurant_name, null: false
      t.integer       :comment_id,      null: false
      t.integer       :genre_id,        null: false
      t.timestamps
    end
  end
end
