include HelperMethods
class Api::V1::DocumentsController < ApplicationController

  def show_by_identifier
    document = Document.find_by_identifier(params[:indentifier])
     if params[:checksum] == document.checksum
       document_data = document.as_json(only: [:indentifier, :file, :original_file_name])
       render json: document_data
        else
         Rails.logger.debug "==> document data: #{e.message} <=="
       render json: {errors: 'the information you provided does not match any file'}, status: 422
    end
  end

  def show
     document = Document.find(params[:id])
     if params[:checksum] == document.checksum
       document_data = document.as_json(only: [:id, :file, :original_file_name])
       render json: document_data
        else
         Rails.logger.debug "==> document data: #{e.message} <=="
       render json: {errors: 'the information you provided does not match any file'}, status: 422
    end
  end

  def create
    begin
      Rails.logger.debug "==> upload document: #{params} <=="
      document = Document.new(document_params)
      mirror_document =  MirrorDocument.new(document_params)
      bucket_name = ClientBucket.where(client_id: document_params[:client_id] , bucket_name: (document_params[:client_id] + '-lp-client-bucket')).first_or_create
      file_data = document_params['file'].open
			original_file_name = File.basename(document.file_url)
      document.checksum = compute_digest(file_data)
      document.generated_file_name = generat_file_name(original_file_name)
      mirror_document.generated_file_name = generat_file_name(original_file_name)
      if document.save
         mirror_document.save
        document_data = document.as_json(only: [:id, :checksum])
        render json: document_data
      else
        render json: document.errors
      end
    rescue Exception => e
      render json: e.message.inspect
      Rails.logger.debug "==> error upload document: #{e.message} <=="
    end
	end





  

 # def download
   # document = Document.find(params[:id])
  #  file_original_url = document.file_url
  #  redirect_to file_original_url
  #end 
#end


def download
  begin #
  document = Document.find(params[:id])
  file_original_url = document.file_url
  file_name = File.basename(file_original_url)
    if system("wget #{file_original_url} -P #{Rails.root}/tmp/documents/")
        return "#{Rails.root}/tmp/documents/#{file_name}"
    else
       system ("wget #{file_original_url} -p #{Rails.root}/tmp/mirror_documents/")
       return "#{Rails.root}/tmp/mirror_documents/#{file_name}"
      end #
    rescue Exception => e #
    end
  end
 end


  private

  def document_params
    params.require(:document).permit(:file, :client_id)
  end






  # def set_bucket_name(name)
  #   CarrierWave.configure do |config|
  #     config.fog_directory = name
  #   end
  # end

  def generat_file_name(file_name)
    o = [(0..9), ('A'..'Z')].map(&:to_a).flatten
    string = (0...5).map { o[rand(o.length)] }.join
    return string + file_name
  end
