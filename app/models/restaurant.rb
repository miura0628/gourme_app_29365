class Restaurant < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :comment
    belongs_to_active_hash :genre
    belongs_to_active_hash :prefecture
    has_one_attached :image
    has_one :address

end
