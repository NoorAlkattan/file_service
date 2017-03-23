class AddColumnToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :checksum, :string
  end
end
