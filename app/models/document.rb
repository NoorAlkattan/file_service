class Document < ApplicationRecord
  mount_uploader :file, FileUploader

  #def file_name
  #  File.Basename(file.path) || file.filename) if file
  #end







 def perform(id, key)
   document = Document.find(id)
   document.key = key
   document.save!
   #document.update_column(:file_processed)
 end
end
