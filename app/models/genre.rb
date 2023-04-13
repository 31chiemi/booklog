class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 4, name: '202204' },
    { id: 5, name: '202205' },
    { id: 6, name: '202206' },
    { id: 7, name: '202207' },
    { id: 8, name: '202208' },
    { id: 9, name: '202209' },
    { id: 10, name: '2022010' },
    { id: 11, name: '2022011' },
    { id: 12, name: '2022012' },
    { id: 13, name: '202301' },
    { id: 14, name: '202302' },
    { id: 15, name: '202303' },
  
  ]

  include ActiveHash::Associations
  has_many :books
  end