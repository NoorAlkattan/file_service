include HelperMethods
class Api::V1::DocumentsController < ApplicationController

	def show
		@document = Document.find(params[:id])
		render json: @document
	end


def create
	  begin
      @document = Document.new(document_params)
      file_data = document_params['file'].open
			@document.original_file_name = File.basename(@document.file_url)
			o = [(0..9), ('A'..'Z')].map(&:to_a).flatten
      string = (0...5).map { o[rand(o.length)] }.join
			@document.generated_file_name = string + @document.original_file_name
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
