class SalesPerson < ActiveRecord::Base
  has_many :phones
  has_many :manufacturers
  
  validates :name, presence: true
  validates :age, presence: true
end
