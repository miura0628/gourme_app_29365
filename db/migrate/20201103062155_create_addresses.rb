class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer     :prefecture_id, null: false
      t.text        :city,          null: false
      t.references  :restaurant,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
