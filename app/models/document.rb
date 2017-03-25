class Document < ApplicationRecord
  mount_uploader :file, FileUploader
  validates_presence_of :file
   attr_accessor :generated_file_name
end
