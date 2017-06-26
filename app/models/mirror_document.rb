class MirrorDocument < ApplicationRecord
  mount_uploader :file, MirrorFileUploader
  validates_presence_of :file
  attr_accessor :generated_file_name
end
