class RestaurantAddress
  include ActiveModel::Model
  attr_accessor :prefecture_id, :city, :restaurant_name, :image, :genre_id, :comment_id

    #空の投稿を保存できないようにする
    with_options presence: true do
      validates :restaurant_name
      validates :image
    end

    #ジャンルが選択されていない「--」状態では保存できないようにする
      validates :comment_id, numericality: { other_than: 0, message: "select" }
      validates :genre_id, numericality: { other_than: 1, message: "select" }
    # 「住所テーブル」に関するバリデーション
      validates :prefecture_id, numericality: { other_than: 1, message: "select" }
      validates :city, presence: true

    def save
      # レストランテーブルの情報を保存
      restaurant = Restaurant.create!(restaurant_name: restaurant_name, image: image, genre_id: genre_id, comment_id: comment_id)
      # 住所テーブルの情報を保存
      Address.create!(restaurant_id: restaurant.id, prefecture_id: prefecture_id, city: city)
    end
end