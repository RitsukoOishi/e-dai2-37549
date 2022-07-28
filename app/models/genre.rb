class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '講師謝礼' },
    { id: 3, name: '会場費' },
    { id: 4, name: '通信費' },
    { id: 5, name: '運用経費' },
    { id: 6, name: '次年度繰越金' }
  ]

  include ActiveHash::Associations
  has_many :edais  
  end