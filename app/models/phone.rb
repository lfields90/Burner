class Phone < ActiveRecord::Base
  belongs_to :manufacturer

  validates :name, presence: true
  validates :manufacturer_id, presence: true
  validates :year,
    presence: true,
    inclusion: { in: 2003..Date.today.year }
  validates :battery_life, presence: true

end
