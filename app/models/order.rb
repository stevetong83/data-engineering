class Order < ActiveRecord::Base

  belongs_to :uploaded_file
  belongs_to :merchant
  belongs_to :purchaser
  belongs_to :item

  validates :uploaded_file_id, :merchant_id, :purchaser_id, :item_id, :purchase_count, presence: true
end
