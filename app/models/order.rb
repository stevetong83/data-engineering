class Order < ActiveRecord::Base

  belongs_to :uploaded_file
  belongs_to :merchant
  belongs_to :purchaser
  belongs_to :item
end
