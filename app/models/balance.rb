class Balance < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '収入' },
    { id: 3, name: '支出' }
  ]

  include ActiveHash::Associations
  has_many :edais  
  end