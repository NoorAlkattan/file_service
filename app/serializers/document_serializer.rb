class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :checksum, :file
end
