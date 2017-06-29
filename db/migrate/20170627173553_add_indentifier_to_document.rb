class AddIndentifierToDocument < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :unique, :string
  end
end
