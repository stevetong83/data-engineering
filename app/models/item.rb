class Item < ActiveRecord::Base

  has_many :orders

  validates :description, :price, presence: true
end
