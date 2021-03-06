require 'spec_helper'
include ActionDispatch::TestProcess

describe :UploadedFile do

  describe :normalize_data do
    before do
      @uploaded_file = FactoryGirl.create :uploaded_file
    end

    it {Purchaser.count.should eq 3}
    it {Item.count.should eq 3}
    it {Merchant.count.should eq 3}
    it {@uploaded_file.orders.count.should eq 4}
  end

  describe :gross_revenue do
    before do
      @uploaded_file = FactoryGirl.create :uploaded_file
    end

    it {@uploaded_file.gross_revenue.should eq 95.0}
  end
end
