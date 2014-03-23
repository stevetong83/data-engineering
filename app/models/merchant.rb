class Merchant < ActiveRecord::Base

  has_many :orders

  validates :name, :address, presence: true
end
