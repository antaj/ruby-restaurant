class Order < ActiveRecord::Base
  belongs_to :food

  validates :name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
end
