class Api::V1::DocumentsController < ApplicationController

	def show
		@document = Document.find(params[:id])
		render json: @document
	end

	def create
    @document = Document.new(document_params)
    @document.save
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end
		    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
		params.require(:document).permit(:file)
    end
 end
