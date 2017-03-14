class Document < ApplicationRecord
  mount_uploader :file, FileUploader
  validates_presence_of :file
 # validate :file_format
  
  
  def file_format
    unless valid_extension? file.filename
      errors.add(:file, 'Invalid file format.')
    end
  end

  def valid_extension?(filename)
    ext = File.extname(filename)
    %w( tif xls doc pdf docx ).include? ext.downcase
  end  
end
