class AddOriginalFileNameAndGeneratedFileNameToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :original_file_name, :string
    add_column :documents, :generated_file_name, :string
  end
end
