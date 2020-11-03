class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください' },
    { id: 2, name: 'ラーメン' },
    { id: 3, name: '寿司' },
    { id: 4, name: '焼肉' },
    { id: 5, name: 'カレー' },
    { id: 6, name: '日本料理' },
    { id: 7, name: '韓国料理' },
    { id: 8, name: '中華料理' },
    { id: 9, name: 'イタリアン' },
    { id: 10, name: 'フレンチ' },
    { id: 11, name: 'ファーストフード'},
    { id: 12, name: 'その他'}
  ]
  include ActiveHash::Associations
  has_many :restaurants
end