include ChecksumHelper
class Api::V1::DocumentsController < ApplicationController

  def show
    @document = Document.find(params[:id])
    if params[:checksum] == @document.checksum
      render json: @document
    else
      render json: {errors: "checksum is not the same"}, status: 422
    end
  end


  def create
    begin
      @document = Document.new(document_params)
      file_data = document_params['file'].open
      @document.checksum = compute_digest(file_data)
      if @document.save
        render json: @document
      else
        render json: @document.errors
      end
    rescue Exception => e
      render json: e.message.inspect
    end
  end
  private
  def document_params
    params.require(:document).permit(:file)
  end
end
