# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    purchaser_name "MyString"
    file_id 1
    item_description "MyText"
    item_price "9.99"
    purchase_count 1
    merchant_address "MyString"
    merchant_name "MyString"
  end
end
