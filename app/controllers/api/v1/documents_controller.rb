include HelperMethods
class Api::V1::DocumentsController < ApplicationController

  def show
    document = Document.find(params[:id])
    if params[:checksum] == document.checksum
      document_data = document.as_json(only: [:id, :file])
      render json: document_data
    else
      render json: {errors: 'the information you provided dose not match any file'}, status: 422
    end
  end


  def create
    begin
      document = Document.new(document_params)
      file_data = document_params['file'].open
      document.checksum = compute_digest(file_data)
      if document.save
        document_data = document.as_json(only: [:id, :checksum])
        render json: document_data
      else
        render json: document.errors
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
