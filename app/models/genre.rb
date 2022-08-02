class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '講師謝礼' },
    { id: 3, name: '会場費' },
    { id: 4, name: '通信費' },
    { id: 5, name: '運営経費' },
    { id: 6, name: '次年度繰越' },
    { id: 7, name: '事業補助費' },
    { id: 8, name: '会費' },
    { id: 9, name: '句集代' },
    { id: 10, name: '前年度繰越' },
  ]

  include ActiveHash::Associations
  has_many :edais  
  end