class Document < ApplicationRecord
  mount_uploader :file, FileUploader
  validates_presence_of :file
  
  def perform(id, key)
   document = Document.find(id)
   document.key = key
   document.save!
  end
end
