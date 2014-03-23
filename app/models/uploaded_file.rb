class UploadedFile < ActiveRecord::Base

  mount_uploader :file, FileUploader

  has_many :orders

  validates :file, presence: true

  after_create :normalize_data

  def extension_white_list
    %w(tab)
  end

  private

  def normalize_data
    file = self.file.read
    orders = file.split("\n")
    orders[1..orders.length].each do |order|
      line_items = order.split("\t")
      purchaser_name = line_items[0]
      item_description = line_items[1]
      item_price = line_items[2]
      purchase_count = line_items[3]
      merchant_address = line_items[4]
      merchant_name = line_items[5]
      merchant = Merchant.where(name: merchant_name, address: merchant_address).first_or_create
      purchaser = Purchaser.find_or_create_by(name: purchaser_name)
      item = Item.where(description: item_description, price: item_price).first_or_create
      Order.create(purchaser: purchaser, item: item, merchant: merchant, purchase_count: purchase_count, uploaded_file: self)
    end

  end

end
