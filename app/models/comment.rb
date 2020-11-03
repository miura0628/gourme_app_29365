class Comment < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: '★☆☆☆☆' },
    { id: 3, name: '★★☆☆☆' },
    { id: 4, name: '★★★☆☆' },
    { id: 5, name: '★★★★☆' },
    { id: 6, name: '★★★★★' }
  ]
  include ActiveHash::Associations
  has_many :restaurants
  end