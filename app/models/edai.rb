class Edai < ApplicationRecord
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :balance
  belongs_to :my_description
  validates :balance_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :entry_day, presence: true
  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :my_description_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0} 
end
