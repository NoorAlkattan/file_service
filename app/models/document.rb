class Document < ApplicationRecord
  mount_uploader :file, FileUploader
  validates_presence_of :file
end
