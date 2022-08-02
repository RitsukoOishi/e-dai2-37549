class Description < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '講師謝礼' },
    { id: 3, name: '税金' },
    { id: 4, name: '会場費' },
    { id: 5, name: '郵送代' },
    { id: 6, name: '封筒、ハガキ、短冊' },
    { id: 7, name: 'コピー用紙、インクカートリッジ' },
    { id: 8, name: '句集代' },
    { id: 9, name: '次年度繰越' },
    { id: 10, name: '事業補助費' },
    { id: 11, name: '会費' },
    { id: 12, name: '句集代' },
    { id: 13, name: '前年度繰越' }
  ]

  include ActiveHash::Associations
  has_many :edais
end