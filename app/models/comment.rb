class Comment < ActiveHash::Base
  self.data = [
    { id: 0, name: '選択してください' },
    { id: 1, name: '★☆☆☆☆' },
    { id: 2, name: '★★☆☆☆' },
    { id: 3, name: '★★★☆☆' },
    { id: 4, name: '★★★★☆' },
    { id: 5, name: '★★★★★' }
  ]
  include ActiveHash::Associations
  has_many :restaurants
  end