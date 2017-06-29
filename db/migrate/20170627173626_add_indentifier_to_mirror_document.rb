class AddIndentifierToMirrorDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :mirror_documents, :unique, :string
  end
end
