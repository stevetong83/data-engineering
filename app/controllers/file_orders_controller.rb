class FileOrdersController < ApplicationController

  def index
    @file_orders = FileOrder.all
  end

  def new
    @file_order = FileOrder.new
  end

  def create
    @file_order = FileOrder.create params(file_order_params)
  end

  private

  def file_order_params
    params.require(:file_order).permit(:name, :file)

  end


end
