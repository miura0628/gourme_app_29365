class Restaurant < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :comment
    belongs_to :genre
    belongs_to :prefecture
    has_one_attached :image
    
    #空の投稿を保存できないようにする
    with_options presence: true do
      validates :restaurant_name
      validates :genre_id
      validates :comment_id
    end
    #ジャンルが選択されていない「--」状態では保存できないようにする
    validates :comment_id, numericality: { other_than: 1 } 
end
