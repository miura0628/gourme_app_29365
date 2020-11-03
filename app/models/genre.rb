class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: 'ラーメン' },
    { id: 3, name: '寿司' },
    { id: 4, name: '焼肉' },
    { id: 5, name: '中華料理' },
    { id: 6, name: '韓国料理' },
    { id: 7, name: '居酒屋' },
    { id: 8, name: 'イタリアン' },
    { id: 9, name: 'フレンチ' },
    { id: 10, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :restaurants
end