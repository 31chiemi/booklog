class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ベストセラー・シリーズ' },
    { id: 2, name: '色・数' },
    { id: 3, name: '言葉・歌' },
    { id: 4, name: '動物・自然' },
    { id: 5, name: '乗り物' },
    { id: 6, name: '食べ物' },
    { id: 7, name: '生活' },
    { id: 8, name: '歴史' },
    { id: 9, name: 'ユーモア' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :books
  end