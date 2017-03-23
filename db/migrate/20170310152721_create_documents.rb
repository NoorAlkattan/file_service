class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
     t.string :original_file_name
     t.string :generated_file_name

      t.timestamps
    end
  end
end
