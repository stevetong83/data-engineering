class UploadedFilesController < ApplicationController

  def index
    @uploaded_files = UploadedFile.all
  end

  def new
    @uploaded_file = UploadedFile.new
  end

  def show
    @uploaded_file = UploadedFile.find params[:id]
    @orders = @uploaded_file.orders.all
  end

  def create
    @uploaded_file = UploadedFile.create(uploaded_file_params)
    if @uploaded_file.save
      redirect_to @uploaded_file, notice: "File has been uploaded successfully"
    else
      render :edit
    end
  end

  private

  def uploaded_file_params
    params.require(:uploaded_file).permit(:file)

  end


end
