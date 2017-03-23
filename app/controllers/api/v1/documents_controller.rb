class Api::V1::DocumentsController < ApplicationController

	def show
		@document = Document.find(params[:id])
		render json: @document
	end

	def create
	  begin
      @document = Document.new(document_params)
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
