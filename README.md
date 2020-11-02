# テーブル設計

## users テーブル
|  Column    |  Type        |  Options      |
|  --------  |  ----------  |  -----------  |
|  nickname  |  string      |  null: false  |
|  email     |  string      |  null: false  |
|  password  |  string      |  null: false  |

### Association
- has_many :restaurants


## restaurants テーブル
|  Column           |  Type        |  Options                         |
|  ---------------  |  ----------  |  ------------------------------  |
|  genre_id         |  integer     |  null: false                     |
|  restaurant_name  |  string      |  null: false                     |
|  comment_id       |  integer     |  null: false                     |
|  user             |  references  |  null: false, foreign_key: true  |

### Association
- belongs_to :user
- has_one :address


## addresses テーブル
|  Column         |  Type        |  Options                         |
|  -------------  |  ----------  |  ------------------------------  |
|  prefecture_id  |  integer     |  null: false                     |
|  city           |  text        |  null: false                     |
|  restaurant     |  references  |  null: false, foreign_key: true  |

### Association
- belongs_to :restaurant